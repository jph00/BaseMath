funcs1 = ['min', 'max']
# unary functions
funcs2 = """acos acosh asin asinh atan atanh cbrt cos cosh erf erfc exp exp2 expm1 log log10 log1p log2 logb
nearbyint rint sin sinh tan tanh tgamma""".split()
# binary functions
funcs3 = "pow atan2 copysign fdim fmax fmin hypot nextafter".split()
types = ['Float','Double']

op_fs = 'add sub mul div'.split()
ops = '+-*/'
unaryfs = ['abs']+funcs2
binfs = op_fs+['subRev','divRev']+funcs1+funcs3

