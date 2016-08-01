//: [Previous](@previous)

import Foundation

//PATTERN MATCHING

/*
switch(a,b){
case(a, _)
case(a, let c)
}
*/
//fizzbuzz
func fizzbuzz(num num:Int) -> String {
	switch (num%3==0, num%5==0) {
	case(true, false):
		return "Fizz"
	case(false, true):
		return "Buzz"
	case(true, true):
		return "FizzBuzz"
	default:
		return String(num)
	}
}

fizzbuzz(num: 15)

/*
for case()
for case(let )
for case let()


*/


//
let name:String? = "yo"
let pswd:String? = "yahoo"

switch(name, pswd) {
case let (name?, .Some(pswd)): //unwrapped
	print("\(name) and \(pswd)")
case let (.Some(name), .None): // or(name?, nil)
	print("no pswd")
default:
	print("who are you")
}



//pattern matching in enums

enum WeatherType {
	case Cloudy(coverage: Int)
	case Sunny
	case Windy

}

let today = WeatherType.Cloudy(coverage: 100)

switch today {
case .Cloudy(let cov) where cov < 100:
	print("cloudy: \(cov)")
case .Cloudy(let cov) where cov == 100:
	print("london")

case .Sunny:
	print("sunny")
default:
	print("windy")
}

//where in for, if












