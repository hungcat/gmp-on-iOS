# gmp-on-iOS
Swift code using gmp c library.

## How to make

1. Create a New Xcode project.
2. Build GMP Library framework using [GMP iOS Builder](https://github.com/NeoTeo/gmp-ios-builder).
3. Add libgmp.framework to the project.
4. Make module map for GMP (ref. GMP/) 
5. Add "$(SRCROOT)/GMP" to Swift Import Paths.

## Comments
どうやら#defineで定義された関数(mpz_init等)が見えない模様

求）原因, 解決方法

## Author

[hungcat](https://github.com/hungcat)
