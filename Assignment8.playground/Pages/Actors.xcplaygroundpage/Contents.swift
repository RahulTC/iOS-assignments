import UIKit

//
//  Assignment8.swift
//  Actor
//
//  Created by Rahul Adepu on 10/30/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Actor
// Actors are like stucts, class, and enums.
// Like classes actors require initializers and are reference type, but the only difference is that actors do not allow inheritance.
// They can conform to protocols and they can also be generics.
// Example - Most crucial for Banking apps since they might need async behavious like withdrawal from multiple locations and wait time.

actor Pokemon {
    var pokemonName: String
    
    init(pokemonName: String) {
        self.pokemonName = pokemonName
    }
    
    func getPokemonName(){
        
    }
    
    func renamePokemonName(name: String) {
        self.pokemonName = name
    }
}

//
var pokemon1 = Pokemon(pokemonName: "Pikachu")
Task {
    
    //Reading the value of the object and changing the value of the object.
    await pokemon1.getPokemonName()
    await pokemon1.renamePokemonName(name: "Pika-pi")
    
    //Creating another object to confirm that "actor" is a reference type
    var pokemon2 = pokemon1
    await print("Pokemon 1 name =",pokemon1.pokemonName)
    await print("Pokemon 2 name =",pokemon2.pokemonName)
    
    await pokemon2.renamePokemonName(name: "Pika-pi-2")
    await print("Pokemon 1 name =",pokemon1.pokemonName)
    await print("Pokemon 2 name =",pokemon2.pokemonName)
}
