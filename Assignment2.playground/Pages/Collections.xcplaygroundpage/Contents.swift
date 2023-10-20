import UIKit

//
//  Assignment2.swift
//  Collections
//
//  Created by Rahul Adepu on 10/19/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// MARK: Sets
/// Definition:
/// A set in Swift is a unordered collection of unique data.
/// 1. When we print the variable "marvelCharacters" we notice that there is only one Ironman.
/// 2. We also notice that the order of the variable "marvelCharacters" is not the same as it is it's declaration.
var marvelCharacters: Set<String> = ["Ironman", "Spider-man", "Captian America", "Thor", "Ironman"]
print(marvelCharacters)

marvelCharacters.insert("Hulk")
marvelCharacters.remove("Thor")
print("Count is ->",marvelCharacters.count)
print(marvelCharacters)

if marvelCharacters.contains("Ironman"){
    print("The movie will be a super hit.")
}

// Multiple ways to declare a Set
var marvelHeros: Set = ["Ironman", "Spider-man", "Captian America"]
print(marvelHeros)

// There are two ways to declare an empty Set
var emptyIntSet = Set<Int>()
var emptyBoolSet: Set<Bool> = []
print(emptyIntSet)
print(emptyBoolSet)


// MARK: Dictionary
/// Definition:
/// A dictionary is a unordered collection of data in a key-value pair format. A colon is used to separate the key from its value
/// 1. Dictionaries do not have dublicate keys instead they have unique keys.
var marvelDialogues: [String:String] = ["Ironman":"I am Ironman",
                                        "Captain America":"I can do this all day",
                                        "Thor":"Bring me thanos",
                                        "Hulk":"I am always angry"]

// Dictionaries do not have indexes instead we can refer the value by using the keys.
print(marvelDialogues["Ironman"])

// We can also store the value in a variable using key.
let captainAmericaDialogue = marvelDialogues["Captain America"]
print(captainAmericaDialogue)

// The following code will cause an error because we are repeating the keys
//var wrongDictionary: [Int:String] = [1:"Ironman",2:"Spider-man",1:"Captain America"]

// We can add new value to a dictionary by creating a new unique key and assigning it a value
marvelDialogues["Groot"] = "I am groot"
print(marvelDialogues)

// We can remove a value by referencing the key of a dictionary
marvelDialogues.removeValue(forKey: "Groot")
print(marvelDialogues)
