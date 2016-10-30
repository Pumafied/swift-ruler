#!/usr/bin/swift

import Foundation

var base:Double = 2
var product:Double = 1
var finalSum:Int = 0

for x in 1...1000{
	product = product * base
}

print(product)

let formatter = NumberFormatter()
//var test:Double = 9999999999999999999999999999
formatter.numberStyle = .none
let stringSum:String = formatter.string(from:NSNumber(floatLiteral:product))!
print(formatter.string(from:NSNumber(floatLiteral:product))!)

for char in stringSum.characters.enumerated(){
		print(char.element)
   finalSum += Int(String(char.element))!

}

print("Answer: " + String(finalSum))
