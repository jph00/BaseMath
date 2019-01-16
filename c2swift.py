from pdb import set_trace
import re

def lower1(s): return s[:1].lower() + s[1:]

float_swift = ['Float', 'Double']
float_c = ['float', 'double']
int_swift = ['Int', 'Int32']
int_c = ['long', 'int']
float_types = list(zip(float_swift,float_c))
int_types = list(zip(int_swift,int_c))

type_replace = {'double':'Double', 'float':'Float', 'int':'Int32', 'long':'Int',
                'void':'Void', '#':'#', '':''}
type_replace_rev = {v:k for k,v in type_replace.items()}

def word(name): return fr'(?P<{name}>[\w#]+)'
param_re = re.compile(fr'(?P<const>const *)?{word("t")} *(?P<ptr>\*?) *{word("name")}(?P<arr> *\[\])?')

def parse_type(s):
    m = param_re.search(s)
    if not m: raise Exception(f"Failed to parse: {s}")
    name = m.group('name')
    is_ptr = m.group('ptr') or m.group('arr')
    t = m.group('t')
    t = type_replace.get(t,t)
    if is_ptr:
        if t=='Void': t = 'UnsafeRawPointer'
        else:
            p_type ='UnsafePointer' if m.group('const') else 'UnsafeMutablePointer'
            t = f"{p_type}<{t}>"
    return (name,t)

def parse_types(s):
    if not s: return {}
    s = re.split(r',\s*', s)
    return dict([parse_type(o) for o in s])

def test_parse() :
    in1 = "const long n,const float a[], double r[],  const int N, const float *ex, # f"
    ex1 = dict([("n","Int"), ("a","UnsafePointer<Float>"), ("r","UnsafeMutablePointer<Double>"), ("N","Int32"),
           ("ex","UnsafePointer<Float>"), ("f","#")])

    res = parse_types(in1)
    for r,exp in zip(res.items(),ex1.items()):
        assert r == exp, f'{r}\n{exp}'

    print("done")

if __name__=='__main__': test_parse()

