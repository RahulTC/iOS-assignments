import UIKit

//
//  Assignment4.swift
//  Protocols
//
//  Created by Rahul Adepu on 10/23/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Definition
// A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
// The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.
protocol PokemonProtocol{
    // Properties in  protocol
    var pokemonName: String { get set }
    
    // Functions and Methods of protocols
    func nationalPokdexNumber(pokemonName: String)
    
}

extension PokemonProtocol {
    func pokemonType(pokemonName: String){
        print("Protocol Pokemon Type")
    }
}


struct PokemonStruct: PokemonProtocol {
    var pokemonName: String
    
    func nationalPokdexNumber(pokemonName: String) {
        if pokemonName == "Pikachu"{
            print("0025")
        }else {
            print("Invalid")
        }
    }
    
    func pokemonType(pokemonName: String) {
        if pokemonName == "Pikachu"{
            print("Type -> Electric")
        }else {
            print("Invalid")
        }
    }
}

let pokemonProtocol = PokemonStruct(pokemonName: "Pikachu")
print(pokemonProtocol.pokemonName)
pokemonProtocol.nationalPokdexNumber(pokemonName: "Pikachu")
pokemonProtocol.pokemonType(pokemonName: "Pikachu")
