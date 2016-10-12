#!/usr/bin/swift


//Sum of squares

var sumOfSquares = 0
var squareOfSums = 0
for x in 0...100{
	sumOfSquares += x * x

//Square of sums
	squareOfSums += x
}
squareOfSums = squareOfSums  * squareOfSums

print("Answer: " + String(squareOfSums - sumOfSquares))
