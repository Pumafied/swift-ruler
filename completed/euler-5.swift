#!/usr/bin/swift

var current:Int = 1
var run:Bool = true

while run{
	for x in 2...20{
		if(current % x != 0){
			break
		}
		if(x == 20 && current % x == 0){
			print("Answer " + String(current))
			run = false
			break
		}
	}
	current += 1

}
