import UIKit

//
//  Assignment2.swift
//  Classes
//
//  Created by Rahul Adepu on 10/19/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// MARK: Classes
// Classes and inheritance and initialisers for it
/// Definition:
/// Classes are used to define a characteristics or behvaiors of an object. Classes are stored in Heap memory so they are reference type. Classes point to an object in memory and update the object in memory
class Pokemon{
    private var id: Int
    private var name: String
    private var type: String
    
    // Classes declare init explicitly
    init(id: Int, name: String, type: String) {
        self.id = id
        self.name = name
        self.type = type
    }
    
    func getName() -> String {
        return self.name
    }
    
    func updateName(newName:String){
        self.name = newName
    }
    
    func getId() -> Int {
        return self.id
    }
    
    func updateID(newId:Int){
        self.id = newId
    }
    
}

let pokemon = Pokemon(id: 0001, name: "Bulbasaur", type: "Grass/Poison")

// We can get the id value of the pokemon using function
print("Pokémon ID Before Update ->",pokemon.getId())

// We can also update the value of the pokemon using function
pokemon.updateID(newId: 0002)
print("Pokémon ID After Update ->",pokemon.getId())


// Swift does not allow multi inheritance
class BattlePokemon: Pokemon{
    private var weakness: String
    
    init(weakness: String, id: Int, name: String, type: String) {
        self.weakness = weakness
        super.init(id: id, name: name, type: type)
    }
}

let pokemonBattle = BattlePokemon(weakness: "Fire", id: 0001, name: "Bulbasaur", type: "Grass/Poison")

// we do not have a getName() function in the BattlePokemon class, but since we inherit from Pokemon class we can use the getName() function
print(pokemonBattle.getName())
