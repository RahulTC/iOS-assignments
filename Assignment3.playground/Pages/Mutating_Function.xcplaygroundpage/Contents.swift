import Foundation

//
//  Assignment2.swift
//  Enums
//
//  Created by Rahul Adepu on 10/21/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//6. Mutating Function in strut
///Definition:
///The mutating keyword is only required if you are changing any state contained within the struct.
///Since Swift structs are immutable objects, calling a mutating function actually returns a new struct in-place (much like passing an inout parameter to a function).
///The mutating keyword lets callers know that the method is going to make the value change.
struct Pokemon {
    var name: String

    mutating func changePokemonName(pokemonName:String) {
        name = pokemonName
    }
}

var pokemon = Pokemon(name: "Charizard")
print(pokemon.name)
pokemon.changePokemonName(pokemonName: "Pikachu")
print(pokemon.name)
