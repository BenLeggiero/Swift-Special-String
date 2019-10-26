//
//  EssentiallyAString.swift
//  SpecialString
//
//  Created by Ben Leggiero on 2019-10-02.
//

import Foundation



/// Any type which is technically not a string, but is essentially a string
public protocol EssentiallyAString:
    RawRepresentable,
    ExpressibleByStringLiteral,
    LosslessStringConvertible,
    Hashable,
    Codable
where
    RawValue == String,
    StringLiteralType == String
{
    init(rawValue: String)
}



// MARK: - ExpressibleByStringLiteral

public extension EssentiallyAString {
    init(stringLiteral value: Self.StringLiteralType) {
        self.init(rawValue: value)
    }
}



// MARK: - LosslessStringConvertible

public extension EssentiallyAString {
    
    var description: String { rawValue }
    
    init(_ description: String) {
        self.init(rawValue: description)
    }
}



// MARK: - Hashable

public extension EssentiallyAString {
    public func hash(into hasher: inout Hasher) {
        rawValue.hash(into: &hasher)
    }
}



// MARK: - Equatable

public extension EssentiallyAString {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}
