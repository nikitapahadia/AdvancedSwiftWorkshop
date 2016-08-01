//: [Previous](@previous)

import Foundation

//Operator overloading

if 4==4 {
	print("match")
}else {
	print("no match")
}


infix operator + {
associativity left// is used only if precedence cannot be used eg. for 10-5-1
precedence 140// defines the BODMAS or PEMDAS rule
}

//
func *(lhs:[Int], rhs:[Int])->[Int] {
	guard lhs.count == rhs.count else {return lhs}
	
	var result = [Int]()
	
	for(index, int) in lhs.enumerate(){
		result.append(int * rhs[index])
	}
	
	return result
}

let res = [1,2,3] * [2,2,3]


//adding a new operator **
infix operator ** {}

func **(lhs:Double, rhs:Double)->Double {
	return pow(lhs, rhs)
}

2**4


//modify existing operator ...

func ...(lhs :Range<Int>, rhs: Int)->[Int]{
	guard let maximum = lhs.last else {return Array(lhs)}
	
	let downwards = (rhs ..< maximum).reverse()
	return Array(lhs)+downwards
}

infix operator ... {
associativity left
precedence 135
}

1...10...1