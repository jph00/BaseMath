# BaseMath

Basic math functions for float and double arrays in Swift, with no dependencies, via the `BaseVector` protocol. They are generally around 3-5x faster than standard swift loops or maps, since they use pointers, which avoids the overhead of Swift's copy-on-write checking. The following functions are provided (all also have a version suffixed with `_` and a version prefixed with `sum` - see below of details):

- Binary functions,: `sqr`, `abs`, `min`, `max`, `pow`, `atan2`, `copysign`, `fdim`, `fmax`, `fmin`, `hypot`, `nextafter`, `add`, `sub`, `mul`, `div`, `subRev`, `divRev`
- Unary functions,: `acos`, `acosh`, `asin`, `asinh`, `atan`, `atanh`, `cbrt`, `cos`, `cosh`, `erf`, `erfc`, `exp`, `exp2`, `expm1`, `log`, `log10`, `log1p`, `log2`, `logb`, `nearbyint`, `rint`, `sin`, `sinh`, `tan`, `tanh`, `tgamma`

This library is used by [SwiftyMKL](https://github.com/jph00/SwiftyMKL), which adds more optimized versions of the functions from Intel's Performance Libraries, along with various linear algebra and statistical functions.

Math functions from `Foundation` (which in turn provides the functions available in `math.h`) are used, except for `sum()` (and `sum${f}()`, where `${f}` is a function name from `math.h`), which are written in C, since reductions in Swift are currently not vectorized. The standard math operators are also provided, including optimized assignment versions. Functions with `_` suffix are in-place. In addition the `sqr` function is provided. Note that `abs` is called `fabs` in C versions since that's what it's called in `math.h`.

Because the library uses pointers, Swift's copy-on-write and `let` immutability are bypassed. Use the provided `copy()` method to get a real copy of an `Array`.

To avoid surprises, you might prefer to use the provided `AlignedStorage` struct, which supports much of the same functionality as `Array`, but doesn't use copy-on-write, and aligns memory for (sometimes) better performance. In addition, `UnsafeMutableBufferPointer` is extended to conform to `BaseVector` so it also gets the same functionality.

After `import BaseVector` you'll find that all the standard unary and binary math functions have been added to `Array` for floats and doubles, along with reduction versions of each which start with `sum` (e.g `sumabs`, `sumcos`, etc).

See the test suite for examples of use. For more information on background and implementation details, see [this article] \(TBA).

