#!/usr/bin/swift

import Foundation

///Returns the length of a collatz sequence for a given number
func collatzSequence(number: Int) -> Int{
	///The current step that we are on
	var count:Int = 1
	var current:Int = number

	while current != 1{
		if(current % 2 == 0 ){

			//print("Even")
			//Even
			current = current / 2
		}else{
			//print("Odd")
			//odd
			current = (current * 3) + 1
		}
	count += 1
	}

	return count

}


///The Largest colataze count so far
var largestCount:Int = 2
///Actually the largest number
var largestNum:Int = 2
///Current number to be checked
var current:Int = 2

var formatter = NumberFormatter()
formatter.numberStyle = .none
while current < 1000000{
	print(current)
	print("Currently Checking: " + String(current))
	//print(formatter.string(from:NSNumber(floatLiteral:current))!)
	var current_count:Int = collatzSequence(number:current)
	print(current_count)

	if largestCount < current_count{
		largestNum = current
		largestCount = current_count

	}
	current += 1
}
print("Largest Count: " + String(largestCount))
print("Answer: " + String(largestNum))

