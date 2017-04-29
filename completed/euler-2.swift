#!/usr/bin/swift

var total:Int = 0
var old:Int = 1
var holding:Int = 1
var current:Int = 2

while current < 4000000{
	if current % 2 == 0 {
		total += current
	}
	holding = old + current
	old = current
	current = holding



}


print(total)
