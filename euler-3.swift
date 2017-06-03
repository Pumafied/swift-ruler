#!/usr/bin/swift

import Foundation

var checkNumber:Int = 600851475143
var currentCheck:Int = checkNumber - 1
var primeCheck:Int = 0
var fastPrime = [Int]()

//Get the factors of the number


// This is an even faster version is prime
func fastestIsPrime(number:Int)->Bool{

	return fastPrime.contains(number)


}


///Takes a number and generates a prime set for fastest is prime
func generatePrimeSet(number:Int){
	//First add every number from 1 to the number to an array
	var generator:Int = 0
	for index in 1...number{
		fastPrime.append(index)
	}

	print("generated start set")

	var current:Int = 3
	var currentRunner:Int = 2

	while(current < number){
		while(currentRunner < current){
			if(current % currentRunner == 0){
				fastPrime.remove(at:(fastPrime.index(of:current))!)
				break
			}
			print(current)
			current += 1
		}
	}
	print("generated")
}


generatePrimeSet(number:(checkNumber/2))

while currentCheck > 0{
	if checkNumber % currentCheck == 0{
		//Then it is a factor
		if(fastestIsPrime(number:currentCheck)){

			print("Done: " + String(currentCheck))
			break
		}else{
			print("Not Prime")
		}

	}
	currentCheck = currentCheck - 1
}

