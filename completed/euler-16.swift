#!/usr/bin/swift

import Foundation

var base:Double = 2
var product:Double = 1
var finalSum:Int = 0

for x in 1...1000{
	product =  base * product
}

let formatter = NumberFormatter()
formatter.numberStyle = .none
//let stringSum:String = formatter.string(from:NSNumber(floatLiteral:product))!
let stringSum:String = String(format: "%.0f", product)
var holding_string:String = stringSum.replacingOccurrences(of: ",", with: "")
holding_string = holding_string.replacingOccurrences(of: "0", with: "")

for char in holding_string.characters.enumerated(){
		finalSum += Int(String(char.element))!

}

print("Answer: " + String(finalSum))
