# BaseMath

Basic math functions for float and double arrays in Swift, with no dependencies. Generally around 3-5x faster than standard swift loops or maps. These functions are provided (all also have an in-place version suffixed with `_` and a reduction version prefixed with `sum` - see below for details):

- Binary functions,: `min`, `max`, `pow`, `atan2`, `copysign`, `fdim`, `fmax`, `fmin`, `hypot`, `nextafter`, `add`, `sub`, `mul`, `div`, `subRev`, `divRev`
- Unary functions,: `acos`, `acosh`, `asin`, `asinh`, `atan`, `atanh`, `cbrt`, `cos`, `cosh`, `erf`, `erfc`, `exp`, `exp2`, `expm1`, `log`, `log10`, `log1p`, `log2`, `logb`, `nearbyint`, `rint`, `sin`, `sinh`, `tan`, `tanh`, `tgamma`

This library is used by [SwiftyMKL](https://github.com/jph00/SwiftyMKL), which adds more optimized versions of the functions from Intel's Performance Libraries, along with various linear algebra and statistical functions.

Math functions from `Foundation` (which in turn uses functions in `math.h`) are used, except for `sum()`, which is written in C, since reductions in Swift are currently not vectorized. The standard math operators are also provided, including optimzed assignment versions. Functions with `_` suffix are in-place.

Note that because the library uses pointers, Swift's copy-on-write and `let` immutability are bypassed. Use the provided `copy()` method to get a real copy of an `Array`.

To avoid surprises, you might prefer to use the provided `AlignedStorage` struct, which supports much of the same functionality as `Array`, but doesn't use copy-on-write, and aligns memory for (sometimes) better performance.

After `import BaseVector` you'll find that all the standard unary and binary math functions have been added to `Array` for floats and doubles, along with reduction versions of each which start with `sum` (e.g `sumabs`, `sumcos`, etc).

See the test suite for examples of use.
