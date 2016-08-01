//: [Previous](@previous)

import Foundation

//: [Next](@next)


//1. closure 

let rateSpeaker = { (name:String, age:Int) in
	print(name)
	print(age)
}

rateSpeaker("Niki", 27)


// 2. 2 functions that generate a random number of different sizes. Struct that stores one of those funcs as property. Method for that struct that calls the closure and prints its return value

func random1() -> Int{
	return Int(arc4random_uniform(50))
}

func random2() -> Int {
	return Int(arc4random_uniform(5))
}

struct Random {
	var random: () -> Int
	
	func callClosure() -> Int {
		print(random())
		return random()
	}
}

Random(random: random1).callClosure()

//or

let r = Random(random: random2)
r.callClosure()

