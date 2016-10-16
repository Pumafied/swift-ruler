#!/usr/bin/swift

var compareArray = [2]

var primeCheck:Int = 0

func isPrime(number:Int)->Bool{
	primeCheck = number
		while(primeCheck > 1){
			//print("PrimeChecking")

				if(number % primeCheck != 0){
					return false

				}
			primeCheck = primeCheck - 1
		}
	print("is Prime")
	return true

}
	//This version of is prime relies on a store and compare version
	func fasterIsPrime(number:Int)->Bool{
		print("number " + String(number))
		print("number in array " + String(compareArray[compareArray.count-1]))
		print("array index " + String(compareArray.count-1))
		if(number > compareArray[compareArray.count - 1]){
			print("number Greater")
			//Generate more arrays until the bottom
			var check:Int = compareArray[compareArray.count - 1] + 1
			//Make sure it ends up where it needs to be
			while(check < number){
				//print("checking")

				if(isPrime(check)){
					print("is Prim")
					compareArray.append(check)
				}
				if(check > number){
					break
				}
				check = check + 1
			}
		}
		print("At the else")
		//Implicit else - plus added benifit ofsolving after adding
		//Figure out if the current number is in the array
		print(compareArray.contains(number))
		return compareArray.contains(number)

	}

var current:Int = 2
var primeOrder:Int = 0

while true{
	print("current" + String(current))
	if(fasterIsPrime(current)){
		primeOrder += 1
	}

	if(primeOrder == 100001){
		print("answer" + String(current))

	}
	current += 1
}


