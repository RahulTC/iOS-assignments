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

let pokemons = [Pokemon(pokemonName: "Pikachu", pokemonNPN: 25),
                Pokemon(pokemonName: "Charizard", pokemonNPN: 6),
                Pokemon(pokemonName: "Greninja", pokemonNPN: 658),
                Pokemon(pokemonName: "Sceptile", pokemonNPN: 254),
                Pokemon(pokemonName: "Lucario", pokemonNPN: 448),
                Pokemon(pokemonName: "Infernape", pokemonNPN: 392)]

// MARK: 1. Map
// It takes a collection and applies a function to each element and returns a new collection with results.
var pokemonNamesInCaps = pokemons.map{ $0.pokemonName.uppercased() }
print("pokemon Names ->",pokemonNamesInCaps)

// MARK: 2. Filter
// It takes a collection and applies a function to it and then returns
var evenNumber = pokemons.filter{$0.pokemonNPN % 2 == 0}
print("Even Numbers pokemons ->",evenNumber)

// MARK: 3. Reduce
var allPokemonNPN = pokemons.map{ $0.pokemonNPN }
var sumOfAll = allPokemonNPN.reduce(0,+)
print("Sum of all ->", sumOfAll)

// MARK: 4. Sort
var sortedPokemonAlphabetically = pokemons.sorted { poke1, poke2 in
    poke1.pokemonName < poke2.pokemonName
}
print("Sorted ascending order of numbers ->", sortedPokemonAlphabetically)

// MARK: 5. Flat Map
let array2d = [[123, 55], [0, 0], [1, 4], [6, 55]]
print("Flat map on duplicated nil values",array2d.flatMap{$0})

// MARK: 6. Compact Map
let duplicatedNilArray = [123, 55, nil, 0, 0, 1, 4, 6, 55]
print("Compact map on 2D array",duplicatedNilArray.compactMap({ $0 }))

// MARK: 7. For Each
pokemons.forEach { print($0) }

// MARK: 8. Zip
let pokemons2 = [Pokemon(pokemonName: "Blastoise", pokemonNPN: 9),
                Pokemon(pokemonName: "Pidgeot", pokemonNPN: 18)]

let zipPokemons = zip(pokemons,pokemons2)
print(zipPokemons)
