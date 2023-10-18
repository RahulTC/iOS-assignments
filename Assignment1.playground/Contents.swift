import UIKit

//
//  Assignment1.swift
//
//  Created by Rahul Adepu on 10/18/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//


// MARK: 1.Constants

/// Definition
/// A constant is a variable whose value can not be changed once it is declared. We use the keyword "let" to declare constants.
let fullName = "Rahul Adepu"

// MARK: 2.Variables

/// Definition
/// Variables are used to store and refer to values by identifying their name. After declaring the variables, the values of the variables can be change but their data type cannot be changed. We use the keyword "var" to declare variables.
var age: Int = 26
var heightInCM: Decimal = 168.6

// MARK: 3.functions in swift(different types of functions)

/// Definition
/// A function is a reusable block of code responsible for completing a certain task. We define a function using the "func" keyword along with a name. We have the option to add parameters and/or return type to a function. A function consists of a body that contains the code block needed to execute its task.

// Functions Without Parameters and Return Values
func doSomething(){
    print("I did something")
}

doSomething()

// Functions With Multiple Parameters without Return Values
func printGreeting(fName: String, lName:String){
    print("My first name is \(fName) and my last name is \(lName)")
}
printGreeting(fName: "Rahul", lName: "Adepu")

// Functions With Multiple Parameters with Return Value
func convertTemp(cel: Decimal) -> Decimal {
    var fahrenheit: Decimal = (cel * (9/5)) + 32
    return fahrenheit
}

convertTemp(cel: 20)

// Functions With Multiple Parameters with Multiple Return Values
func multipleReturnValues(name: String, age:Int) -> (String, Int){
    return (name, age)
}

var multiValues = multipleReturnValues(name: "Rahul", age: 26)
print("My name is \(multiValues.0) and my age is \(multiValues.1)")

// MARK: 4.Type Inference

/// Definition
/// Type inference means that a compiler is able to understand the type of a particular expression when it compiles your code, simply by checking the values you provide.
var fullName1: String = "Rahul Adepu"   // I have decalred the data type while declaring a variable
var fullName2 = "Rahul Adepu"           // I did not have to declare the data type and yet the data type of the variable was assigned as String
print(type(of: fullName2))

// MARK: 5.Type Safety

/// Definition
/// Swift is a type safe programming language. It makes sure that once a varibale is declared with a certain data type it cannot be resigned with a different data type or you cannot pass it as another data type
var name = "Rahul"
name = "Adepu"      // I can change the value of variable "name" with another String
//name = 26         // This will give me an error as I cannot change the value of variable "name" with an Int


// MARK: 7.Arrays

/// Definition
/// An array is a collection of similar data types. We can declare the type of array or else Swift will infere it for us and set the type of array.
var evenNumbers:[Int] = [2, 4, 6, 8 , 10]
print(evenNumbers.first)
print(evenNumbers.count)
print(evenNumbers.last)
print(evenNumbers.isEmpty)
print(evenNumbers[2])

var oddNumbers: [Int] = [1, 3, 5, 7, 9]
print(oddNumbers)

var wholeNumbers = evenNumbers + oddNumbers
print(wholeNumbers)

// MARK: 8.Tuples and its different types and use

/// Definition
/// In Swift, a tuple is a collection of different values and each value in a tuple can be of different data types.
var details = ("Rahul", "Adepu", 26, 63)
print("My Name is \(details.0) \(details.1)")
print("My age is \(details.2) and I weigh \(details.3) kgs")
