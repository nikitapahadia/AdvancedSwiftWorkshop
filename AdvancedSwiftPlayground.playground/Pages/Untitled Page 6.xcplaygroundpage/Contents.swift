//: [Previous](@previous)

import Foundation

//NIL COALESCING (??)

let name:String? = "Taylor"
print(name)

let unwrappedName = name ?? "Anon"
print(unwrappedName)

//try?

do {
	let savedText = try String(contentsOfFile:"saved.txt")
	print(savedText)
} catch {
	print("failed to load")
}

let st = (try? String(contentsOfFile:"saved.txt")) ?? "hello"
