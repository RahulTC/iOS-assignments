import UIKit

//
//  Assignment7.swift
//  Multi-threading 1
//
//  Created by Rahul Adepu on 10/27/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//1. Main Queue (Main Thread)
DispatchQueue.main.async{
    print("Main Thread A Started")
    var a = 1
    for i in 0...10000{
        a += 1
    }
    print("Main Thread A Ended")
}

DispatchQueue.main.async{
    print("Main Thread B Started")
    var a = 1
    for i in 0...1000{
        a += 1
    }
    print("Main Thread B Ended")
}

/*
 Print Results
 
 Main Thread A Started
 Main Thread A Ended
 Main Thread B Started
 Main Thread B Ended
 */
