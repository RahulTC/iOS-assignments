import UIKit

//
//  Assignment2.swift
//  Control Statements
//
//  Created by Rahul Adepu on 10/21/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//1. Control Statements (if , if else, if else if else,switch

// MARK: If
// Simple If loop is used to run a block of code only when a certain condition is satisfied.
var pokemon1 = "Bulbasaur"
if pokemon1 == "Bulbasaur" {
    print("First pokemon in pokedex is Bulbasaur with number 001")
}

// MARK: If-else
// Simple if-else loop is used when there are two possibilities and the we want to address both the possibilities
var num = 11

if num % 2 == 0 {
    print("num is an even number")
} else {
    print("num is an odd number")
}

// MARK: If-else if-else
// Nested if else loop is used when there are multiple outcomes and we want to address all the possible outcomes.
var score = 101

if score >= 0 && score < 50 {
    print("Grade F")
} else if score < 60 {
    print("Grade E")
} else if score < 70 {
    print("Grade D")
} else if score < 80 {
    print("Grade C")
} else if score < 90 {
    print("Grade B")
} else if score <= 100 {
    print("Grade A")
} else {
    print("Not Valid score") // This print value will execute if the score value is less than 0 (negative) or above 100
}

// MARK: Switch
/// Definition:
/// The switch statement allows us to execute a block of code among many possible outcomes.
/// Most people prefer to use switch statements over too many nested if-elses because they can be much easier to read.
var marvelCharacter = "Tony Stark"

switch marvelCharacter {
case "Tony Stark":
    print("I love you 3000")
case "Peter Parker":
    print("Hi, um my name is peter parker and I would like a coffee please")
case "Thor":
    print("What more could I lose")
case "Steve Rogers":
    print("I had a date")
case "Natasha Romanoff":
    print("It's okay")
case "Loki":
    print("You will never be a god")
default:
    print("The sadest dialogues in marvel")
}
