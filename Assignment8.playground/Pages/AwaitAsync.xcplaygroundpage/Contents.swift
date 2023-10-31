import UIKit

//
//  Assignment8.swift
//  Await Async
//
//  Created by Rahul Adepu on 10/30/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Await Async
// Swift uses this method to simplify all the asynchronous programming. It allows to write ashynchronous operations in a more readable format so that it is easy to work with concurrent tasks and not affect the main thread at all.

// Asynchronous operations with no parameters and return type of Int
func task1() async -> Int {
    print("Task 1")
    for i in 0..<10000{
        
    }
    return 1
}

// Asynchronous operations with one parameter and no return type
func task2(param: Int) async {
    print("Task 2")
}

Task {
    let output = await task1()
    print("Output=", output)
    await task2(param: output)
}
