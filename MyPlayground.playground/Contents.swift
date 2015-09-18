//: Playground - noun: a place where people can play

import UIKit

var myVariable = 5
var myDouble = 3.14
var myString = "Hello!"
var happy = false

if happy {
    println("clap clap")
} else {
    println("???")
}

var names = ["John", "Lisa", "Bill"]

names[0]
names[1]


for name in names {
    println(name)
}

for x in 1...5 {
    println(x)
}

class Animal {
    var name:String?
}

class Zebra : Animal {
    func printName() {
        println(self.name)
    }
}

var myAnimal:Animal = Animal()

myAnimal.name

func multiplyByTwo(x:Int) -> Int {
    return x * 2
}

multiplyByTwo(multiplyByTwo(2))

