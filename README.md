# gmp-on-iOS
Swift code using gmp c library.

## How to make

1. Create a New Xcode project.
2. Build GMP Library framework using [GMP iOS Builder](https://github.com/NeoTeo/gmp-ios-builder).
3. Make module map for GMP (ref. GMP/)
4. Place Frameworks/libgmp.framework and GMP/.
5. Add "$(SRCROOT)/GMP" to Swift Import Paths.

## Author

[hungcat](https://github.com/hungcat)
