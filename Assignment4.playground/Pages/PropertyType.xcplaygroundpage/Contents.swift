import UIKit

//
//  Assignment4.swift
//  Property Types
//
//  Created by Rahul Adepu on 10/23/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Definition
// Properties are associated values that are stored in a class instance, structs, or enumeration.

// 1. Stored property
// A stored property is a property whose value is stored as part of the instance of a particular type.
// Stored properties can be either variable or constant.
// we use var to create a variable stored property and let to create a constant stored property
struct Pokemon
{
    // variable stored property
    var pokemonName: String
    
    // constant stored property
    let pokemonNationalPokedexNumber: String
}

// creating an instance of the Pokemon struct with the pokemon name Pikachu and National Pokedex Number 0025
let pokemon1 = Pokemon(pokemonName: "Pikachu", pokemonNationalPokedexNumber: "0025")
print("My favourite pokemon's name is \(pokemon1.pokemonName).")
print("My favourite pokemon's National Pokedex Number is \(pokemon1.pokemonNationalPokedexNumber).")

// 2. Lazy stored property
// Lazy stored properties are a way to change the initialization of a property until it is first used.
// Lazy properties are also useful for creating properties whose initial value depends on another property.
// You can create a lazy property by writing lazy modifier before its declaration.
// We have to use "=" and "()" at the end to make it a function because lazy properties must have an initializer.
class LazyPokemon
{
    var lazyPokemonName: String
    
    // lazy stored property
    lazy var lazyPokemonType: String = {
        print("Lazy Property")
        if lazyPokemonName == "Pikachu" {
            return "Electric"
        }else{
            return "Doesn't matter"
        }
    }()
    
    init(lazyPokemonName: String) {
        self.lazyPokemonName = lazyPokemonName
    }
}

var lazyPokemon = LazyPokemon(lazyPokemonName: "Pikachu")
print("Pokemon Type -> ", lazyPokemon.lazyPokemonType)
print("Pokemon Name -> ", lazyPokemon.lazyPokemonName)

// 3. Computed stored property
// To give a specific behavior for properties of classes, structures, and enumerations we use computed properties.
// They are similar to methods, but they are written as part of the type itself rather than as part of an instance. 
// They do not store values instead they use getter and setters to retrieve and set property and its values indirectly.
struct ComputedPokemon {
    var computedPokemonName: String
    
    var computedPokemonType: String {
        print("Computed Property")
        if computedPokemonName == "Charizard"{
            return "Fire"
        }else {
            return "Invalid"
        }
    }
}

var computedPokemon = ComputedPokemon(computedPokemonName: "Charizard")
print("Pokemon Type -> ", computedPokemon.computedPokemonType)
print("Pokemon Name -> ", computedPokemon.computedPokemonName)
