import Foundation

// MARK: - BundleFinder
private class BundleFinder {}

/*
Using this because Bundle.module is a Swift Package thing. When we compile
to xcframework, Bundle.module isnt found at compile time. So we redefine it
here to keep from needing to change a bunch of code that was previously
a valid (source-based) Swift Package.
   */
extension Bundle {
  static var module = Bundle(for: BundleFinder.self)
}
