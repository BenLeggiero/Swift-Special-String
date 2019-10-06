//
//  Premade Special Strings.swift
//  
//
//  Created by Ben Leggiero on 2019-10-05.
//

import Foundation



// MARK: - Unsafe User Input

/// The special type for `UnsafeUserInput`
public struct UnsafeUserInputSpecialType: SpecialStringSpecialType {}



/// A special string which represents unsafe user input. It must be sanitized before it can be safely used.
///
/// - SeeAlso: `SanitizedUserInput`
public typealias UnsafeUserInput = SpecialString<UnsafeUserInputSpecialType>



// MARK: - Unsafe User Input

/// The special type for `SanitizedUserInput`
public struct SanitizedUserInputSpecialType: SpecialStringSpecialType {}



/// A special string which represents user input which has gone through some process and can now be deemed safe to use
///
/// - SeeAlso: `UnsafeUserInput`
public typealias SanitizedUserInput = SpecialString<SanitizedUserInputSpecialType>



// MARK: - Password

/// The special type for `Password`
public struct PasswordSpecialType: SpecialStringSpecialType {}



/// A special string which represents a password. It must never be stored as a serialized string.
public typealias Password = SpecialString<PasswordSpecialType>
