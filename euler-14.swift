#!/usr/bin/swift

import Foundation

///Count 
var count:Int = 0
var step:Int = 2
///The Largest colataze count so far 
var largestCount:Int = 2
var current:Double = 2

let formatter = NumberFormatter()
//var test:Double = 9999999999999999999999999999
formatter.numberStyle = .none
//let stringSum:String = formatter.string(from:NSNumber(floatLiteral:product))!
while step < 1000000{
	current = Double(step)
	print(current)
	while current != 1.0{
	print("Currently Checking: " + String(step))
		print(formatter.string(from:NSNumber(floatLiteral:current))!)
		if(current.truncatingRemainder(dividingBy: 2) == Double(0)){

			print("Even")
			//Even
			current = current - 1
		}else{
			print("Odd")
			//odd
			current = (current * 3) + 1
		}
		count += 1
		if largestCount < count{
			largestCount = count

		}
	}
	step = step + 1
}
print("Answer: " + String(largestCount))
