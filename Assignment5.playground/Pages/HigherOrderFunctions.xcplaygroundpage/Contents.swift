import UIKit

//
//  Assignment5.swift
//  Higher Order Functions
//
//  Created by Rahul Adepu on 10/25/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

struct Pokemon{
    let pokemonName: String
    let pokemonNPN: Int
}

struct Pokemon2Darray{
    let pokemonName: String
    let pokemonType: [String]
}

let pokemons = [Pokemon(pokemonName: "Pikachu", pokemonNPN: 25),
                Pokemon(pokemonName: "Charizard", pokemonNPN: 6),
                Pokemon(pokemonName: "Greninja", pokemonNPN: 658),
                Pokemon(pokemonName: "Sceptile", pokemonNPN: 254),
                Pokemon(pokemonName: "Lucario", pokemonNPN: 448),
                Pokemon(pokemonName: "Infernape", pokemonNPN: 392)]

// MARK: 1. Map
print("-------------------------MAP-------------------------")
// It takes a collection and applies a function to each element and returns a new collection with results.
var pokemonNamesInCaps = pokemons.map{ $0.pokemonName.uppercased() }
print("pokemon Names ->",pokemonNamesInCaps)

// MARK: 2. Filter
print("-------------------------Filter-------------------------")
// It takes a collection and applies a function to it and then returns
var evenNumber = pokemons.filter{$0.pokemonNPN % 2 == 0}
print("Even Numbers pokemons ->",evenNumber.map{$0.pokemonName})

// MARK: 3. Reduce
print("-------------------------Reduce-------------------------")
var allPokemonNPN = pokemons.map{ $0.pokemonNPN }
var sumOfAll = allPokemonNPN.reduce(0,+)
print("Sum of all ->", sumOfAll)

// MARK: 4. Sort
print("-------------------------Sort-------------------------")
var sortedPokemonAlphabetically = pokemons.sorted { poke1, poke2 in
    poke1.pokemonName < poke2.pokemonName
}
print("Sorted ascending order of numbers ->", sortedPokemonAlphabetically.map{$0.pokemonName})

// MARK: 5. Flat Map
print("-------------------------Flat Map-------------------------")
let pokemon2dArray = [Pokemon2Darray(pokemonName: "Pikachu", pokemonType: ["Electric"]),
                      Pokemon2Darray(pokemonName: "Charizard", pokemonType: ["Fire", "Flying"]),
                      Pokemon2Darray(pokemonName: "Greninja", pokemonType: ["Water", "Dark"]),
                      Pokemon2Darray(pokemonName: "Sceptile", pokemonType: ["Grass"]),
                      Pokemon2Darray(pokemonName: "Lucario", pokemonType: ["Flighting", "Steel"]),
                      Pokemon2Darray(pokemonName: "Infernape", pokemonType: ["Fire", "Fighting"])]
let arrayVal = pokemon2dArray.flatMap{$0.pokemonType}
print("Flat map on 2d Array values",pokemon2dArray.flatMap{$0.pokemonType})

//// Use flatMap to create a new array with one Pokemon type per name
//let flattenedPokemonArray = pokemon2dArray.flatMap { pokemon in
//    pokemon.pokemonType.map { type in
//        Pokemon2Darray(pokemonName: pokemon.pokemonName, pokemonType: [type])
//    }
//}
//
//// Printing the result
//for pokemon in flattenedPokemonArray {
//    print("Pokemon Name: \(pokemon.pokemonName), Pokemon Type: \(pokemon.pokemonType)")
//}




// MARK: 6. Compact Map
print("-------------------------Compact Map-------------------------")
let duplicatedNilArray = [123, 55, nil, 0, 0, 1, 4, 6, 55]
print("Compact map on 2D array",duplicatedNilArray.compactMap({ $0 }))

// MARK: 7. For Each
print("-------------------------For Each-------------------------")
pokemons.forEach { print($0) }

// MARK: 8. Zip
print("-------------------------Zip-------------------------")
let zipPokemons = zip(pokemons,pokemon2dArray)
print(zipPokemons)
