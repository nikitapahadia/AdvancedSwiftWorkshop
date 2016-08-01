//: [Previous](@previous)

import Foundation

//GENERICS

func inspect<T>(input:T) {
	print("received: \(input.dynamicType) value: \(input)")
}
inspect("jsgdf")
inspect(3476)

//Constraining generics

protocol Numeric {
	func *(lhs:Self, rhs:Self) -> Self
}

extension Float:Numeric{}
extension Double{}
extension Int{}

func square<T: Numeric>(value:T) -> T {
	return value*value
}


//deque: double ended queue
struct Deque<T> {
	var array = [T]()
	
	mutating func pushBack(obj:T) {
		array.append(obj)
	}
	
	mutating func pushFront(obj:T) {
		array.insert(obj, atIndex: 0)
	}
	
	mutating func popBack() -> T {
		return array.removeLast()
	}
	
	mutating func popFront() -> T {
//		if array.isEmpty {
//			return nil
//		} else {
			return array.removeFirst()
//		}
	}
}

//
struct CountedSet<T: AnyObject> {
	var internalSet = NSCountedSet()
	
	func addObject(obj:T) {
		internalSet.addObject(obj)
	}
	
	func removeObject(obj:T) {
		internalSet.removeObject(obj)
	}
	func countForObj(obj:T)->Int {
		return internalSet.countForObject(obj)
	}
}

var cs = CountedSet<NSString>()
cs.addObject("hi")
cs.addObject("hi")
cs.addObject("hi")
cs.addObject("hi")
cs.addObject("hi")
cs.countForObj("hi")












