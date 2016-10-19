#!/usr/bin/swift

var compareArray = [2]

var primeCheck:Int = 0

func isPrime(number:Int)->Bool{
	primeCheck = number - 1
		while(primeCheck > 1){
			//print("PrimeChecking")

				if(number % primeCheck == 0){
					return false

				}
			primeCheck = primeCheck - 1
		}
	//print("is Prime")
	return true

}
	//This version of is prime relies on a store and compare version
	func fasterIsPrime(number:Int)->Bool{
		if(number > compareArray[compareArray.count - 1]){
			//Generate more arrays until the bottom
			var check:Int = compareArray[compareArray.count - 1] + 1
			//Make sure it ends up where it needs to be
			while(check <= number){
				if(isPrime(number:check)){
					compareArray.append(check)
				}
				if(check > number){
					break
				}
				check = check + 1
			}
		}
		//Implicit else - plus added benifit ofsolving after adding
		//Figure out if the current number is in the array
		return compareArray.contains(number)

	}

var current:Int = 2
var primeOrder:Int = 0

while true{
	if(fasterIsPrime(number:current)){
		primeOrder += 1
		//print(primeOrder)
	}

	//Itd is 0 based plus
	if(compareArray.count == 10001){
		print("Answer: " + String(compareArray[compareArray.count-1]))
		break

	}
	current += 1
}


