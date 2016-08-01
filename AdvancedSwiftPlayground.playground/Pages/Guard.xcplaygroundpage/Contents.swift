//: [Previous](@previous)

import Foundation

//GAURD

//early returns
//reduces indent level
//unwraps stay in scope

func giveAwardTo(name:String?) {
	guard let winner = name else {
		return
	}
	print("Winner: \(winner)")
}



//LABELED STATEMENTS

//goto
//used for exiting scope in swift


var board = [[String]](count: 10, repeatedValue: [String](count: 2, repeatedValue: ""))

outerLoop: for (rowIndex, cols) in board.enumerate() {
	for (colIndex, col) in cols.enumerate() {
		if col == "x" {
			//break only breaks inside for loop
			break outerLoop
		}
	}
}

func funcA()->Bool{return true}
func funcB()->Bool{return true}
func funcC()->Bool{return true}
func funcD()->Bool{return true}
//
//label: if funcE() {
//	guard funcB() else {return} // and so on
//	guard funcC() else {return}
//	guard funcD() else {return}
//	print("success")
//}











