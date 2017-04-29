#!/usr/bin/swift

var triangleNumbers = [Int]()
var count:Int = 0

for i in 1...1000{
	var num:Int = 0
	num = Int(Double(0.5 * i) * Double( i + 1))
	triangleNumbers.append(num)
}
print(triangleNumbers)



