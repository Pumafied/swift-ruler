#!/usr/bin/swift

var checkNumber:Int = 600851475143
var currentCheck:Int = checkNumber - 1
var primeCheck:Int = 0
//Get the factors of the number


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

