import UIKit

//
//  Assignment7.swift
//  Memory Management 2
//
//  Created by Rahul Adepu on 10/27/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

class PokemonTrainer {
    var name: String
    var age: Int?
    weak var pokemon: Pokemon?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Init Pokemon Trainer")
    }
    
    deinit {
        self.age = nil
        print("Deinit Pokemon Trainer")
    }
}
class Pokemon {
    var name:String
    var trainer:PokemonTrainer?
    
    init(name: String, trainer: PokemonTrainer? = nil) {
        self.name = name
        self.trainer = trainer
        print("Init Pokemon")
    }
    
    deinit {
        print("Deinit Pokemon")
    }
}

var pokemon:Pokemon? = Pokemon(name: "Pikachu")
var pokemonTrainer: PokemonTrainer? = PokemonTrainer(name: "Ash Ketchum", age: 16)
pokemonTrainer?.pokemon = pokemon
pokemon?.trainer = pokemonTrainer

pokemonTrainer = nil
pokemon = nil
