import UIKit

//
//  Assignment2.swift
//  Classes
//
//  Created by Rahul Adepu on 10/19/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// MARK: Structs
// Structs and initialisers for it
/// Definition:
/// Structs are also used to define a characteristics or behvaiors of an object. Structs are stored in Stack memory so they are value type. Structs are copied or mutated.
struct Pokemon{
    var id: Int
    var name: String
    var type: String
    
    func getName() -> String {
        return self.name
    }
    
    func getId() -> Int {
        return self.id
    }
}

// Struct declare init implicitly because they are member-wise initializers
let pokemon = Pokemon(id: 0001, name: "Bulbasaur", type: "Grass/Poison")

// We can get the name of the pokemon directly
print("Pokémon's name is ->",pokemon.name)

// We can get the id value of the pokemon using function
print("Pokémon's ID is ->",pokemon.getId())

