//: Playground - noun: a place where people can play

import UIKit

var num1: Int = 5
var pi: Double = 3.14159
var num2: Int = 6

print(pi / 6)

func swapFunc(a: inout Int, b: inout Int){
//    let tmp = a
    a = b
    print(a)
//    b = tmp
}

func swapFunc2(a: inout Int, b: inout Int){
    let tmp = a
    a = b
    b = tmp
}

swapFunc(a: &num1, b: &num2)
print(num1)
print(num2)
