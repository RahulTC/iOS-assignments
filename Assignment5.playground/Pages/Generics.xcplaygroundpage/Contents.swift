import UIKit

//
//  Assignment5.swift
//  Generics for Structs, Classes, and Enum
//
//  Created by Rahul Adepu on 10/25/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// MARK: Generics for Classes
class Information<T> {
    var data: T
    
    init(data: T) {
        self.data = data
    }
    
    func displayTheData() {
        print("Data is = \(self.data)")
    }
    
    func description() -> NSString {
        return "Data: \(self.data)" as NSString
    }
}

let i1 = Information(data: 100)
let i2 = Information(data: "20")
let i3 = Information(data: true)
i1.displayTheData()
i2.displayTheData()
i3.displayTheData()


// MARK: Generics for Structs
struct PairValues<T, U> {
    var firstValue: T
    var secondValue: U
    
    init(firstValue: T, secondValue: U) {
        self.firstValue = firstValue
        self.secondValue = secondValue
    }
}

let example1 = PairValues(firstValue: "Rahul Adepu", secondValue: 26)
let example2 = PairValues(firstValue: "Pikachu", secondValue: "Electric")
let example3 = PairValues(firstValue: 25, secondValue: 26)


// MARK: Generics for Enums
enum Pokemon<T>{
    case basicForm(name:String, type: T)
    case evolvedForm(name:String, type: T)
}

let charmander = Pokemon.basicForm(name: "Charmander", type: "Fire")
let charizard = Pokemon.evolvedForm(name: "Charizard", type: "Fire & Flying")
let pikachu = Pokemon.basicForm(name: "Pikachu", type: "Electric")





// Example for Generics
/*
 Property Owner = Name
 Housing property = Castle, Mansion, House, Apartment, Trailer
 */
