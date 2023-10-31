import UIKit

//
//  Assignment8.swift
//  Global Queue
//
//  Created by Rahul Adepu on 10/30/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

/* Global Queue - provided by OS
 Global queue is a concurent dispatch queue in Grand Central Dispatch (GCD). In other words it is system provided queue, and is always concurrent.
 One can give priority and the priority of this queues is decided by factor called as QOS - Quality of Service.
 
 Types of QOS priorities
 1. User Interactive
 2. User Initiated
 3. Utility
 4. Background
 5. Default
 6. Unspecified
*/

DispatchQueue.global().async{
    print("Global Queue")
}

// 1. User Interactive (User is watching something on the screen)
// We use this function for tasks that are time-critical and require immediate user response.
// Animation, drawng on the screen, and/or playing audio.
DispatchQueue.global(qos: .userInteractive).async{
    print("UserInteractive")
}

// 2. User Initiated (User tapped on a button or pulled to refresh the screen)
// We use this function that the user has started and needs an immediate response.
// User requires immediate results -eg. pull to referesh// Pagination
DispatchQueue.global(qos: .userInitiated).async{
    print("UserInitiated")
}

// 3. Utility
// Any long running task, which user is aware and those tasks are not of immediate high priority. eg. Downloading songs or movies
DispatchQueue.global(qos: .utility).async{
    print("Utility")
}

// 4. Background
// We use this option for tasks that are not time-critical and they work in the background which the user is not aware of, without affecting the performance of the app.
// eg. Chat backup
DispatchQueue.global(qos: .background).async{
    print("Bckaground")
}

// 5. Default
// This falls in between userInitiated and utility
DispatchQueue.global(qos: .default).async{
    print("Default")
}

// 6. Unspecified
DispatchQueue.global(qos: .unspecified).async{
    print("Unspecified")
}
