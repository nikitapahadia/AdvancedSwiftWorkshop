//: [Previous](@previous)

import Foundation
//FUNCTIONAL PROGRAMMING

/*
funcs are first class data types
can be used as parameters to other funcs
same input same output, no side effects
prefer immutable data types
reduce how much state we track in our program
*/
/*
benefits:
unit tests writing is easy
remove unexpected dependencies
*/


//MAP :  on any kinda container
func lengthOfStrings(strings: [String]) -> [Int]{
	//	var results = [Int]()
	//	for string in strings {
	//		results.append(string.characters.count)
	//	}
	//	return results
	return strings.map{$0.characters.count} // map returns same size array
}

let nameArr = ["me", "niki"]
let res = lengthOfStrings(nameArr)
let upp = nameArr.map{$0.uppercaseString}
let findN = nameArr.map {$0.hasPrefix("n") ? "yes" : "no"}
findN

//optionals can be used in map, because they are a container (enum with non and wrapped value)
let i: Int? = 10
let j = i.map({$0*2})
j


//foreach
nameArr.forEach{
	print($0)
}




//FLATMAP : 

let arr = [[1,2], [3, 4], [5,6]]
let fl = Array(arr.flatten())

//flatmap = flatten + map calls

let albums : [String?] = ["Fearless", nil, "1989", "Red"]
let result = albums.flatMap{ $0 }
result // optionality goes away, strips nil

let scores = ["100", "90", "fish", "85", "95"]
let flatScores = scores.flatMap { Int($0) }
flatScores
let mapScores = scores.map {Int($0)}
mapScores


//FILTER

let fib = [1,1,2,3,5,8,13,21,34,55]
let even = fib.filter({$0 % 2 == 0})
even


//REDUCE : takes in a container and returns a single value

let scors = [10, 9, 8]
let reslt = scors.reduce(0, combine: +)
let r = scors.reduce("") {$0 + String($1)}//concatenation
r

let cnt = nameArr.reduce(0) { $0 + $1.characters.count }
cnt

let longEnough = nameArr.reduce(true) {$0 && $1.characters.count > 3}
longEnough

let longest = nameArr.reduce("") {$1.characters.count > $0.characters.count ? $1 : $0}
longest

let flattened: [Int] = arr.reduce([]){$0 + $1}
flattened


//SORT : sort func can only be used to structs conform to comparable

let scArr = ["100","98","72","94","102"]
let sortedStr = scArr.sort()
sortedStr


struct Person : Comparable {
	var name:String
	var age:Int
}
func  < (lhs:Person, rhs:Person) -> Bool {
	return lhs.name<rhs.name
}

func  == (lhs:Person, rhs:Person) -> Bool {
	return lhs.name==rhs.name
}

let t = Person(name: "Taylor", age: 10)
let jus = Person(name: "Justin", age: 40)
let ad = Person(name: "Adele", age: 32)

let people = [t, jus, ad]
//old way
//let sortedPeople = people.sort { $0.name < $1.name }
//sortedPeople

//new way
t==jus
ad<t

let rev = Array(nameArr.sort().reverse())


//FUNCTIONAL COMPLETION

let london = (name:"London", continent:"Europe", pop:8_000_000)
let paris = (name:"Paris", continent:"Europe", pop:20_000_000)
let rome = (name:"Rome", continent:"Europe", pop:3_000_000)
let ny = (name:"New York", continent:"Am", pop:4_000_000)
let tokyo = (name:"Tokyo", continent:"Asia", pop:18_000_000)

let cities = [london, paris, rome, ny, tokyo]

let totalPop = cities.reduce(0) {$0 + $1.pop}
totalPop

let europePop = cities.filter({ $0.continent == "Europe"}).reduce(0) {$0 + $1.pop}
europePop


//>>>
//func1(Int) -> Int
//func2(Int)->[Int]
//func3([Int])->String
//calling func3(func2(func1(100))) is the same as 
//let combined = func1 >>> func2 >>> func3; combined(100)
//
//func >>><T,U,V>(lhs:T->U, rhs:U->V) -> T->V {
//	return {rhs(lhs($0))}
//}








