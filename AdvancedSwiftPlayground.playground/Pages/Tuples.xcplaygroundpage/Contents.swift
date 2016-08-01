//: [Previous](@previous)

import Foundation

//TUPLES

var singer = ("Taylor", "Swift")

singer.0
singer.1


var singer2 = (first: "Taylor", last:"Swift")

singer2.first
singer2.1

var singer3 = ("Taylor", "Swift", address: ("add1", "add2"))

singer3.0
singer3.1
singer3.2.1

var singer4 = ("Taylor", "Swift", sing: {(lyrics:String) in print(lyrics)})



