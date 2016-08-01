//: [Previous](@previous)

import Foundation

//LAZY LOADING

class Singer {
	var name:String
	lazy var revName:String = {
		return "\(String(self.name.characters.reverse()))"
	}()//closure applied immediately
	//that's why no refernce cycle here
	
	init(name:String) {
		self.name = name
	}
}

let singer = Singer(name:"Taylor")
singer.revName

singer.name = "some"
singer.revName // doesn't reset
singer.name


//Singletons
class MusicPlayer {
	init () {
		print("Play")
	}
}

class Rocker {
	static let mp = MusicPlayer()
	
	init() {
		print("rocker")
	}
}

let rocker = Rocker()
Rocker.mp



//Lazy Sequences

func fib(num:Int)->Int {
	if num < 2 {
		return num
	}
	else{
		return fib(num-1)+fib(num-2)
	}
}

let seq = (0...10).lazy.map(fib)
print(seq[7])
//does lazily but the lazy sequences do not cache the values, so whenever you want the value again, it will be caluclated again and again



















