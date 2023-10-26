import UIKit

//
//  Assignment4.swift
//  Extensions
//
//  Created by Rahul Adepu on 10/23/2023.
//  Copyright © 2023 Rahul Adepu. All rights reserved.
//

// Definition
// Using Extension we can add new functinalities to an existing type.
extension Double {
    var doubleToString: String {
        if self >= 1000 && self < 1000000 {
            return String(format: "%.2fk", self/1000).replacingOccurrences(of: ".0", with: "")
        }else if self >= 1000000 && self < 999999999999 {
            return String(format: "%.2fM", self/1000000).replacingOccurrences(of: ".0", with: "")
        }
        return String(format: "%.0f", self)
    }
}
var doubleNumber = 980.0
print(doubleNumber.doubleToString)


class TemperatureClass {
    var celsius: Double

    init(celsius: Double) {
        self.celsius = celsius
    }
}

extension TemperatureClass {
  func convertCelsiusToFahrenheit() {
    var fahrenheit = (celsius * (9/5)) + 32
    print("Fahrenheit:", fahrenheit)
  }
}

var temp = TemperatureClass(celsius: 21)
temp.convertCelsiusToFahrenheit()
