#!/usr/bin/swift


func isPalindrome(number:Int) -> Bool{
	let value = String(number)
		if(String(number) == String(value.characters.reversed())){
			return true
		}
	return false
}


var productOne:Int = 1
var productTwo:Int = 1
var currentLargest:Int = 1
var current:Int = 1

while productOne < 1000 && productTwo < 1000{
	current = productOne * productTwo
		if(isPalindrome(number:current)){
			if(current > currentLargest){
				currentLargest = current
			}

		}

	//print (String(productOne) + " " + String(productTwo))
	if(productTwo == 999){
		productOne += 1
		productTwo = 0
	}else{
		productTwo += 1
	}

}

print(currentLargest)
