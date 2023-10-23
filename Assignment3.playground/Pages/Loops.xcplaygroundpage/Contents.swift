import UIKit

//
//  Assignment2.swift
//  Loops
//
//  Created by Rahul Adepu on 10/21/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//2. Loops (for loop , while loop, repeat while)

//MARK: For loop
///Definition:
///The for loop is used to run a block of code for a certain number of times.
///It is used to iterate over any sequences such as an array, dictionary, etc.
var myFavPokemonsArray = ["Pikachu", "Charizard", "Greninja", "Sceptile"]

// Basic for loop
for pokemons in myFavPokemonsArray {
    print(pokemons)
}

// for loop with index value
for i in 0 ..< myFavPokemonsArray.count {
    print("\(i+1) - \(myFavPokemonsArray[i])")
}

// for loop with index value and stride
for i in stride(from: 0, to: myFavPokemonsArray.count, by: 2){
    print(myFavPokemonsArray[i])
}

// Using dictionary
var myFavPokemonsDict = ["Pikachu":["Electric"],
                         "Charizard":["Fire", "Flying"],
                         "Greninja":["Water", "Dark"],
                         "Sceptile":["Grass"],
                         "Lucario":["Flighting", "Steel"],
                         "Infernape":["Fire", "Fighting"]]

// for loop for dictionay (key-value pair)
for (pokemon, pokemonType) in myFavPokemonsDict {
//    print("\(pokemon) is of type \(pokemonType)")
}

// for loop with where clause
for pokemon in myFavPokemonsArray where pokemon == "Pikachu" {
//    print("My favourite pokemon is \(pokemon)")
}

//MARK: While loop
// The while loop loop is used to run a specific code until a certain condition is satisfied. We need to add a trigger code to end the while loop otherwise the loop will become an infinite loop.
var num = 1
while num < 5 {
    print(num)
    num += 1
}
print("While loop completed")

//MARK: repeat-while loop
// The repeat-while loop is similar to while loop with one main difference. The body of repeat-while loop is executed once before the test expression is checked.
var num1 = 1
repeat {
    print(num1)
    num1 += 1
} while num1 < 5
print("While loop completed")


