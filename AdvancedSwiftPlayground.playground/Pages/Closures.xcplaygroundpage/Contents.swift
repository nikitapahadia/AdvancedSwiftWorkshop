//: Playground - noun: a place where people can play

import UIKit

//closures
let greetPerson = {
	print("hi person")
}

greetPerson()

let greekCopy = greetPerson
greekCopy()

func sayHelloClosure(closure:() -> Void) {
	closure()
}

sayHelloClosure(greetPerson)


let greetPersonSomeone = {(name: String) in
	print("hi person \(name)")
}

greetPersonSomeone("Niki")
//
//let greetPersonSomeone = {/*[unowned self]*/(name: String) in
////	self.something
//	print("hi person \(name)")
//}


func runClosure(closure: (String) -> Void) {
	closure("Rish")
}

runClosure(greetPersonSomeone)


//closure capturing


var counter = 0

let greet = {(name: String) in
	counter += 1
	print("hi person \(name)")
}

	greet("a")
	greet("a")
	print(counter)

let grCopy = greet

grCopy("b")
print(counter)// using same refernce even on copying closure


//
let names = ["a", "b", "a", "b", "a", "b", "a", "b"]
let res = names.filter {
	$0.hasPrefix("a") //can remove return because swift getsit?
}

print(res)


//
let input = "some words here"
input.containsString("some")
let words = ["kya", "kare", "words"]

words.contains(input.containsString)//checks  kya, kare, words in `input` and stops whenever that is true

//

let nums = [1,3, 4, 6, 7]

nums.reduce(0) { (int1, int2) -> Int in
//	print("input: \(int1), \(int2)")
	 int1+int2
}

//or
let resut = nums.reduce(0, combine: +)


//@noescape
//public func sort(@noescape isOrderedbefore(Self.Generator.Element, Self.Generator.Element) -> Bool) -> [Self.Generator.Element] {
//	isorderedbefore should and should be used here only
//}


var queuedClosures: [()->Void] = []
func queueClosure(@noescape closure:() -> Void) {
	
}


//@autoclosure
func printTest(@autoclosure result: () -> Void) {
	print("Before")
	result()
	print("After")
}

printTest(print("Hello"))//can remove {} with autoclosure
//assert uses autoclosure

