import UIKit

//
//  Assignment2.swift
//  Optionals
//
//  Created by Rahul Adepu on 10/19/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// MARK: Optionals
/// Definition:
/// An optional can be a constant or a variable that can hold a value or not hold any value which means the value of the constant or variable can be nil. We use a "?" to declare a constant or a variable as an optional
var optionalName: String? = "Random"
var optionalNum: Int?

print("Optional Value \t\t\t\t\t->",optionalName)
print(optionalNum)

// MARK: Optional binding
// Show different ways of optional binding
/// Definition:
/// Optional binding is a method built in Swift to safely unwrap the values of an optional. It mainly used to avoid crashing of an app due to a nil value present in a variable.

// 1. if let
if let value = optionalName {
    print("Unwrapped if let value \t\t\t-> ",value)
}

// 2. guard let
func unwrapOptionalValue(){
    guard let value1 = optionalName else {
        return
    }
    print("Unwrapped guard value \t\t\t-> ",value1)
}
unwrapOptionalValue()

// 3. Nil-Coalescing Operator "??"
print("Unwrapped nil coalescing value \t-> ", optionalName ?? "None")

// 4. Unconditional Unwrapping (force unwrap) "!"
print("Force unwrapped value \t\t\t-> ", optionalName!)
