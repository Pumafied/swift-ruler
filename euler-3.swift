#!/usr/bin/swift

var checkNumber:Int = 600851475143
var currentCheck:Int = checkNumber - 1
var primeCheck:Int = 0
//Get the factors of the number

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
		//print("number" + String(number))
		//print("number in array " + String(compareArray[compareArray.count-1]))
		print("array index " + String(compareArray.count-1))
		if(number > compareArray[compareArray.count - 1]){
			//print("number Greater")
			//Generate more arrays until the bottom
			var check:Int = compareArray[compareArray.count - 1] + 1
			//Make sure it ends up where it needs to be
			while(check <= number){
				//print("checking")
				//print(isPrime(number:check))
				if(isPrime(number:check)){
					//print("is Prime")
					print(check)
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
		print(compareArray.contains(number))
		return compareArray.contains(number)

	}




while currentCheck > 0{
	if checkNumber % currentCheck == 0{
		//Then it is a factor
		if(isPrime(currentCheck)){

			print("Done: " + String(currentCheck))
			break
		}else{
			print("Not Prime")
		}

	}
	currentCheck = currentCheck - 1
}

