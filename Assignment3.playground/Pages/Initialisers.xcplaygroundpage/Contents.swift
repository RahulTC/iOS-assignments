import UIKit

//
//  Assignment2.swift
//  Intialisers
//
//  Created by Rahul Adepu on 10/21/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//3. Initialisers in Swift

//MARK: Default initializer
// In a default initilizer we set the default values to the parameters (variables) in a class object
class Pokemon{
    var name: String = "Pikachu"
    var level: Int = 99
}
let pokemon1 = Pokemon()
print(pokemon1.name)

//MARK: MemberWise initializer
// In a memberwise initializer we create the memeber in the object of a class/struct
struct PokemonMember{
    var name: String
    var level: Int
}
let pokemon2 = PokemonMember(name: "Charizard", level: 95)
print(pokemon2.name)

//MARK: Custom initializer
class PokemonCustom{
    var name: String
    var level: Int
    
    init(name: String, level: Int){
        self.name = name
        self.level = level
    }
}
let pokemon3 = PokemonCustom(name: "Lucario", level: 97)
print(pokemon3.name)

//MARK: Failable initializer
class PokemonFailable{
    var name: String
    
    init?(name:String){
        if name != "Pikachu"{
            return nil
        }
        self.name = name
    }
}
// This will generate a nil value
let pokemon4 = PokemonFailable(name: "Charizard")
print("Wrong answer of failable initializer ->",pokemon4?.name)

// This will generate a proper object with the correct value
let pokemon5 = PokemonFailable(name: "Pikachu")
print("Correct answer of failable initializer ->",pokemon5?.name)

//MARK: Required initializer
class PokemonRequired{
    var name:String
    required init(name: String) {
        self.name = name
    }
}

class PokemonType : PokemonRequired {
    var type: String?
    
    init(name: String, type: String) {
        super.init(name: name)
        self.type = type
    }
    
    required init(name: String) {
        super.init(name: name)
    }
}
let pokemon6 = PokemonType(name: "Infernape", type: "Fire & Fighting")
print("\(pokemon6.name) of type \(pokemon6.type)")

