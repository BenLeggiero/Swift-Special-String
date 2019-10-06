


/// A string which has a special purpose, such as being an identifier, a notification name, a URL, or something else
/// which is basically a string, but giving it type information is important andor useful
public struct SpecialString<SpecialType: SpecialStringSpecialType> {
    /// The actual string value of the specialized string
    fileprivate var stringValue: String
}



public extension SpecialString {
    /// Converts this type-safe string into a string which has no type safety other than being a string.
    ///
    /// - Attention: Be careful to never misplace the resulting string! Doing so might have unintended consequences in
    ///              your software.
    func withoutTypeSafety() -> String { stringValue }
}



extension SpecialString: EssentiallyAString {
    
    /// A requirement. Use `withoutTypeSafety()` instead.
    @available(*,
        deprecated,
        renamed: "withoutTypeSafety()",
        message: "Instead of accessing the raw value directly, you should use the more semantic method `withoutTypeSafety()`"
    )
    @inlinable
    public var rawValue: String { withoutTypeSafety() }
    
    
    /// Creates a new special string with the given internal value
    ///
    /// - Parameter rawValue: The raw, untyped string value
    public init(rawValue: String) {
        self.stringValue = rawValue
    }
}



/// A marker protocol to which all special string special types conform
public protocol SpecialStringSpecialType {
    // Empty on-purpose; Marker protocol
}
