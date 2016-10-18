#!/usr/bin/swift


// a + b + c must = 1k

// a^2 + b^2 must = c^2

var a:Int = 1
var b:Int = 1
var c:Int = 1
var run:Bool = true

while run{
	if( a + b + c == 1000 && (a * a) + (b * b ) == (c * c)){
		run = false
		break
	}
	if (a == 1000){
		a = 1
		b += 1

	}else if (b == 1000){
		b = 1
		c += 1

	}else if c == 1000{
		print("Shit")
		break

	}else{
		a += 1

	}
}

print("Answer = " + String(a * b * c))
