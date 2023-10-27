import UIKit

//
//  Assignment7.swift
//  Memory Management 1
//
//  Created by Rahul Adepu on 10/27/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

class PokemonTrainer {
    var name: String
    var age: Int?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("Init Person")
    }
    
    deinit {
        self.age = nil
        print("Deinit Person")
    }
}

// ARC reference count 1 for object 1
var pokemonTrainer11:PokemonTrainer? = PokemonTrainer(name: "Ash Ketchum", age: 10)
// ARC reference count 2 for object 1
var pokemonTrainer12 = pokemonTrainer11

// ARC reference count 2 for object 2
var pokemonTrainer21:PokemonTrainer? = PokemonTrainer(name: "Gary Oak", age: 10)

// ARC reference count decremented to 1 for object 1
pokemonTrainer11 = nil
// ARC reference count decremented to 0 for object 1
// Since the counter is back to 0 for object 1, it will deinit the object 1
pokemonTrainer12 = nil

// ARC reference count decremented to 0 for object 2
// Since the counter is back to 0 for object 2, it will deinit the object 2
pokemonTrainer21 = nil

print("Pokemon Trainer Object 1",pokemonTrainer11)
print("Pokemon Trainer Object 2",pokemonTrainer12)

pokemonTrainer11?.name = "qweq"
print("Pokemon Trainer Object 1 after renamed",pokemonTrainer11?.name)
