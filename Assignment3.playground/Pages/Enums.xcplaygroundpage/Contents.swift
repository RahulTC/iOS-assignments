import UIKit

//
//  Assignment2.swift
//  Enums
//
//  Created by Rahul Adepu on 10/21/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//4. Enums and its types
//5. Different uses of Enums and use of variables and functions inside Enum

/// Definition:
/// An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.
//MARK: Simple
enum PokemonEnumSimple {
    case Pikachu, Charizard, Greninja, Sceptile, Lucario, Infernape
}

func pokemon(pokemonNames:PokemonEnumSimple){
    switch pokemonNames {
    case .Pikachu:
        print("Pikachu was first introduced in Kanto Region.")
    case .Charizard:
        print("Charizard was first introduced in Kanto Region.")
    case .Greninja:
        print("Greninja was first introduced in Kalos Region.")
    case .Sceptile:
        print("Sceptile was first introduced in Hoenn Region.")
    case .Lucario:
        print("Lucario was first introduced in Sinnoh Region.")
    case .Infernape:
        print("Infernape was first introduced in Sinnoh Region.")
    default:
        print("Ash is the best pokemon trainer")
    }
}

pokemon(pokemonNames: .Lucario)

//MARK: Raw Value
enum PokemonEnumRawValue: String {
    case Pikachu = "0025"
    case Charizard = "0006"
    case Greninja = "0658"
    case Sceptile = "0254"
    case Lucario = "0448"
    case Infernape = "0392"
}
func nationalPokedexNumber(pokemon: PokemonEnumRawValue){
    print("\(pokemon)'s National Pokedex Number is \(pokemon.rawValue)")
}

nationalPokedexNumber(pokemon: .Greninja)

//MARK: Associated Value
enum PokemonRegion {
    case Kanto
    case Sinnoh
}

enum PokemonEnumAssociatedvalue {
    case fire(region:PokemonRegion)
    case grass(region:PokemonRegion)
    case water(region:PokemonRegion)
}


func starterPokemonByRegion(pokemonType: PokemonEnumAssociatedvalue){
    switch pokemonType{
    case .fire(region: let region):
        if region == .Kanto {
            print("Charmander is fire type starter pokemon of Kanto")
        } else if region == .Sinnoh {
            print("Chimchar is fire type starter pokemon of Sinnoh")
        } else {
            print("Invalid Region")
        }
    case .grass(region: let region):
        if region == .Kanto {
            print("Bulbasaur is water type starter pokemon of Kanto")
        } else if region == .Sinnoh {
            print("Turtwig is fire type starter pokemon of Sinnoh")
        } else {
            print("Invalid Region")
        }
    case .water(region: let region):
        if region == .Kanto {
            print("Squirtle is water type starter pokemon of Kanto")
        } else if region == .Sinnoh {
            print("Piplup is water type starter pokemon of Sinnoh")
        } else {
            print("Invalid Region")
        }
    }
}

starterPokemonByRegion(pokemonType: .fire(region: .Sinnoh))

//MARK: CaseIterable
enum PokemonEnumCaseiterable: CaseIterable {
    case Pikachu, Charizard, Greninja, Sceptile, Lucario, Infernape
}

for pokemon in PokemonEnumCaseiterable.allCases {
    print(pokemon)
}
