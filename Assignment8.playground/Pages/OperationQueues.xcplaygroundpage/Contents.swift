import UIKit

//
//  Assignment8.swift
//  Operation Queue
//
//  Created by Rahul Adepu on 10/30/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

/*
 Operation Queues
 - Operation Queues was built on top of Global Central Dispatch (GCD).
 - It gives more control to user.
 - It allows to perform tasks like resume, pause, stop and start task.
 - It allows to add or define dependancies within your task.
 */


let pikachu = BlockOperation{
    print("Adding Pikachu to the list")
}

let charizard = BlockOperation{
    print("Adding Charizard to the list")
}

let greninja = BlockOperation{
    print("Adding Greninja to the list")
}

let operationQueue = OperationQueue()

// We are adding dependencies so that charizard is dependent on pikachu so pikachu comes first adn then charizard. Similarly charizard comes before greninija
charizard.addDependency(pikachu)
greninja.addDependency(charizard)

// We add all operations within a list and wait until finished parameter as false to perform the task immediately
operationQueue.addOperations([pikachu, greninja, charizard], waitUntilFinished: false)

// We are allowing maximum of only one concurrent operation.
operationQueue.maxConcurrentOperationCount = 1

// We are cancelling all the operations
//operationQueue.cancelAllOperations()

// We are suspending as in termiating all the operations in the operations queue.
//operationQueue.isSuspended
