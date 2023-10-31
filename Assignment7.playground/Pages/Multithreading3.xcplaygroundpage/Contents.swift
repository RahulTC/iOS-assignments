import UIKit

//
//  Assignment7.swift
//  Multi-threading 2
//
//  Created by Rahul Adepu on 10/27/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// For concurency
let concurrentQueue1 = DispatchQueue(label: "MyConcurrentQueue1", attributes: .concurrent)
let concurrentQueue2 = DispatchQueue(label: "MyConcurrentQueue2", attributes: .concurrent)
concurrentQueue1.async{
    print("Concurrent Queue 1 - A Task Started")
    var a = 1
    for i in 0...10000{
        a += 1
    }
    print("Concurrent Queue 1 - A Task Ended")
}

concurrentQueue1.async{
    print("Concurrent Queue 1 - B Task Started")
    var a = 1
    for i in 0...100{
        a += 1
    }
    print("Concurrent Queue 1 - B Task Ended")
}

concurrentQueue1.async{
    print("Concurrent Queue 1 - C Task Started")
    var a = 1
    for i in 0...1000{
        a += 1
    }
    print("Concurrent Queue 1 - C Task Ended")
}

concurrentQueue2.async{
    print("Concurrent Queue 2 - A Task Started")
    var a = 1
    for i in 0...10000{
        a += 1
    }
    print("Concurrent Queue 2 - A Task Ended")
}

concurrentQueue2.async{
    print("Concurrent Queue 2 - B Task Started")
    var a = 1
    for i in 0...100{
        a += 1
    }
    print("Concurrent Queue 2 - B Task Ended")
}

concurrentQueue2.async{
    print("Concurrent Queue 2 - C Task Started")
    var a = 1
    for i in 0...1000{
        a += 1
    }
    print("Concurrent Queue 2 - C Task Ended")
}

/*
 Print Results
 
 Concurrent Queue 1 - A Task Started
 Concurrent Queue 1 - B Task Started
 Concurrent Queue 1 - C Task Started
 Concurrent Queue 2 - A Task Started
 Concurrent Queue 2 - B Task Started
 Concurrent Queue 2 - C Task Started
 Concurrent Queue 1 - B Task Ended
 Concurrent Queue 2 - B Task Ended
 Concurrent Queue 1 - C Task Ended
 Concurrent Queue 2 - C Task Ended
 Concurrent Queue 2 - A Task Ended
 Concurrent Queue 1 - A Task Ended
 */
