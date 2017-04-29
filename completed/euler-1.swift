#!/usr/bin/swift
# Completed

var total:Int = 0

for x in 1..<1000{
	if x % 3 == 0 || x % 5 == 0{
		total += x

	}
}
print(total)
