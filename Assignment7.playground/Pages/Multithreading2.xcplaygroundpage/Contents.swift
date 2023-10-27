import UIKit

//
//  Assignment7.swift
//  Multi-threading 2
//
//  Created by Rahul Adepu on 10/27/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

//2. Serial Queue (Custom Queue)
let queue1 = DispatchQueue(label: "MyCustomQueue1")
let queue2 = DispatchQueue(label: "MyCustomQueue2")
queue1.async{
    print("Queue 1 - A Task Started")
    var a = 1
    for i in 0...10000{
        a += 1
    }
    print("Queue 1 - A Task Ended")
}

queue1.async{
    print("Queue 1 - B Task Started")
    var a = 1
    for i in 0...100{
        a += 1
    }
    print("Queue 1 - B Task Ended")
}

queue1.async{
    print("Queue 1 - C Task Started")
    var a = 1
    for i in 0...1000{
        a += 1
    }
    print("Queue 1 - C Task Ended")
}

queue2.async{
    print("Queue 2 - A Task Started")
    var a = 1
    for i in 0...1000{
        a += 1
    }
    print("Queue 2 - A Task Ended")
}

queue2.async{
    print("Queue 2 - B Task Started")
    var a = 1
    for i in 0...10{
        a += 1
    }
    print("Queue 2 - B Task Ended")
}

queue2.async{
    print("Queue 2 - C Task Started")
    var a = 1
    for i in 0...10000{
        a += 1
    }
    print("Queue 2 - C Task Ended")
}

/*
 Print Results
 
 Queue 1 - A Task Started
 Queue 2 - A Task Started
 Queue 2 - A Task Ended
 Queue 2 - B Task Started
 Queue 2 - B Task Ended
 Queue 2 - C Task Started
 Queue 1 - A Task Ended
 Queue 1 - B Task Started
 Queue 1 - B Task Ended
 Queue 1 - C Task Started
 Queue 1 - C Task Ended
 Queue 2 - C Task Ended
 */
