import UIKit

//
//  Assignment4.swift
//  Generics
//
//  Created by Rahul Adepu on 10/23/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Definition
// A Generic Function is a single function that can be used with any type of data instead of creating multiple functions with the same functionality and different data type.
func displayData<T>(dataInformation:String, data: T) {
  print("Generic Function:")
  print("My \(dataInformation) is", data)
}

// Generic function with String
displayData(dataInformation: "name",data: "Rahul Adepu")

// Generic function with Int
displayData(dataInformation: "age", data: 26)

// Generic function with Double
displayData(dataInformation: "height", data: 168.6)
