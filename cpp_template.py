import re,pathlib,os
from pdb import set_trace
from c2swift import *

def make_header(fn):
    fn = os.path.basename(fn).split('.')[0]
    lines = []
    for l in open(f"../{fn}.cpp").readlines():
        if '//internal' in l: continue
        s = re.search(r'^typedef', l)
        if s: lines.append(l)
        s = re.search(r'^(\w.*?){', l)
        if s and not l.startswith('struct'): lines.append(s.group(1)+';')
    return "\n".join(lines)

class cpp:
    def __init__(self, typ, p1, p2=None, gens=None, module='MISSING'):
        if not gens: gens=['']
        self.typ,self.p1,self.p2,self.gens,self.module = typ,p1,p2,gens,module
        self.ps = parse_types(p1)
        self.pswift = ",".join([f"_ {n}:{t}" for n,t in self.ps.items()])
        if self.p2 is None: self.p2 = ",".join(self.ps.keys())
        self.funcs = []
        self.swift_type = 'CppTypePtr'

    def cpp_impl_(self, g):
        suf = f'<{g}>' if g else ''
        xargs = f', {g} _' if g else ''
        over = 'OVERLOADABLE ' if g else ''
        t,p1,p2 = self.typ,self.p1,self.p2
        return f"""
struct _inner_{t}{g}:{t}{suf} {{}};
{over}{t}{g}C {t}_create({p1}{xargs}) {{
  {t}{g}C r = {{(_inner_{t}{g}*) new {t}{suf}({p2})}};
  return r;
}}
OVERLOADABLE void destroy({t}{g}C v) {{ delete(v.p); }}
""".replace('#', g)

    def cpp_impl(self):
        res = [self.cpp_impl_(g) for g in self.gens]
        for func in self.funcs: res += self.cpp_func(*func)
        return '\n'.join(res)

    def cpp_decl_(self,g):
        t = self.typ
        return f"""
typedef struct _inner_{t}{g} _inner_{t}{g};
typedef struct {t}{g}C {t}{g}C;
struct {t}{g}C {{_inner_{t}{g}* p;}};
"""

    @property
    def generics(self):
        return [(o,type_replace_rev.get(o,o)) for o in self.gens]

    def cpp_decl(self):
        res = [self.cpp_decl_(g) for g in self.gens]
        return '\n'.join(res)

    def cpp_func_(self,f,a1,a2,g):
        over = 'OVERLOADABLE ' if g else ''
        return f"{over}{f}({self.typ}{g}C p{a1}) {{return p.p->{a2};}}".replace('#', g)

    def cpp_func(self,f,a1,a2=None):
        if a1: a1=','+a1
        res = [self.cpp_func_(f,a1,a2,g) for g in self.gens]
        return res

    #o.add_func('# call', 'mt19937C g', 'operator()(*g.p)')
    def add_func(self, *func): self.funcs.append(func)

    def swift_func_(self,f,a1, a2, g):
        ps = parse_types(a1)
        p1 = ','.join([f"_ {k}:{v}" for k,v in ps.items()])
        p2 = ",".join(ps.keys())
        f,ret = list(parse_types(f).items())[0]
        if ret=='#': ret=g
        if p2: p2=','+p2
        return f"public func {f}({p1})->{ret} {{ return {self.module}.{f}(self{p2}) }}"
                #public func call(_ g:mt19937C)->{g} {{ return CBaseMath.call(self, g) }}

    def swift_(self, g):
        g2 = type_replace_rev[g]
        funcs = [self.swift_func_(*func,g) for func in self.funcs]
        funcs = '\n'.join(funcs)
        return f"""
extension {self.typ}{g2}C:{self.swift_type} {{
  public func delete() {{destroy(self)}}
  {funcs}
}}
"""

    def swift(self):
        res = [self.swift_(g) for g in self.gens]
        return '\n'.join(res)

