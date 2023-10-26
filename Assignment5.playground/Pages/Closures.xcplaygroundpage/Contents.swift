import UIKit

//
//  Assignment5.swift
//  Closures
//
//  Created by Rahul Adepu on 10/25/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Closure
//Closure is an unnamed block of code, that we can pass around and use in code and can assigne to a variable or can return from a function also.
// Closures are reference type like classes
// They capture and store the reference to any constants and variable surrounding context
// Closures are non-escaping closure

// Types of Closure
// 1. Non-escaping Closure
// 2. Escaping Closure
// 3. Trailing Closure
// 4. Auto Closure

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

// MARK: Non-escaping Closure
/// It is a default closure type.
var latestPokemon: (Pokemon) -> Bool = { pokemon in
    return pokemon.pokemonNPN > 400
}
print("National Pokdex Number of the Pokemon is greater than 400 ->",latestPokemon(pokemons[2]))


// MARK: Escaping Closure
/// For using escaping closures we use the anotation "@escaping"
/// Escaping closures are used to outlive the lifespan of the function.
func performApiCallTask(completion: @escaping ()->()){
    print("1. We are inside performApiCallTask func")
    
    DispatchQueue.global().async{
        print("2. We are inside global Queue")
        
        Thread.sleep(forTimeInterval: 5) // 5 seconds
        
        DispatchQueue.main.async{
            print("3. We are inside DispatchQueue.main")
            print("4. After 4 secs delay")
        }
        print("5. After DispatchQueue.main")
    }
}

performApiCallTask {
    print("Once we get response performApiCallTask")
}


// MARK: Trailing Closure
/// Whenever there is a closure which is last parameter for a function then it will be called as a trailing closure.
/// We take three parameters and onSuccess is a closure as the last parameter
func printPokemonInfo(name:String, NPN:Int, onSuccess:(String)->Void){
    let bioData = "Name of the pokemon is \(name) and National Pokedex Number is = \(NPN)"
    onSuccess(bioData)
}
printPokemonInfo(name: "Pikachu", NPN: 25) { resultVal in
    print(resultVal)
}

// MARK: Auto Closure
/// When a closure doesn't take any parameter and does not return anything from closure then it gets self wrapped when called is known as Auto Closure
func getYourFirstPokemon(getPokemon:()->()){
    getPokemon()
}

getYourFirstPokemon {
    print("Your First Pokemon is Pikachu")
}
