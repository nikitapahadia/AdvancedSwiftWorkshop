//: [Previous](@previous)

import Foundation

//ERRORS

enum PasswordError: ErrorType {
	case Empty
	case Short
	case Obvious(message:String)
}


func encryptString(str:String, pswd: String) throws -> String {
	let encr = pswd+str+pswd
	
	if pswd == "1234" {
		throw PasswordError.Obvious(message: "easy")
	}
	
	return String(encr.characters.reverse())
}

do {
	let encrypted = try encryptString("yay", pswd: "1234")
	print(encrypted)
} catch PasswordError.Empty{
	print("empty")
} catch PasswordError.Short{
	print("short")
} catch PasswordError.Obvious(let message){
	print(message)
} catch {
	print("Encrytption failed")
}

//Goes up the heirarchy
func funcA() {
	do {
		try funcB()
	} catch {
		print("Err")
	}
}

func funcB() throws{
	try funcC()
}

func funcC() throws{
	throw PasswordError.Empty
}

//non throwing function is a subclass of throwing function
func definitelywontthrow(){
	print("won't throw")
}
try definitelywontthrow()


//rethrows
//swift goes deeper to check if the calling function needs to handle the error or not
//use rethrows when there is a closure parameter that throws and you don't want to handle the error internally inside the function

















