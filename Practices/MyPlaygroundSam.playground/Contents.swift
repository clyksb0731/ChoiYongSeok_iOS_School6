//: Playground - noun: a place where people can play

import UIKit

// 이름(문자열)을 받아서 이름을 출력하는 함수
func printName(with name: String) {
    print(name)
}

// 나이 (정수)를 받아서 출력하는 함수
func printAge(Integer age: Int) {
    
}

// 이름과 주소를 입력받아 자기소개글을 프린트 하는 함수
func printPR(name name: String, address address: String){
    print("저의 이름은 \(name)입니다. 그리고 저는 \(address)에 살고 있습니다.")
}

// 정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func divideBy2(with num: Int) -> Double {
    return Double(num) / 2
}

// 정수를 하나 입력받아서 제곱을 반환해주는 함수
func square(with num: Int) -> Int {
    return num * num
}

// 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
func additionCalculator(first num1: Int, second num2: Int) -> Int {
    return num1 + num2
}

// 두개의 정수를 입력받아 두수의 차을 반환해주는 함수
func subtractionCalculator(first num1: Int, second num2: Int) -> Int {
    return num1 - num2
}

// 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
func multiplicationCalculator(first num1: Int, second num2: Int) -> Int {
    return num1 * num2
}

// 두개의 정수를 입력받아 두수의 나눗셈을 반환해주는 함수
func divisionCalculator(first num1: Int, second num2: Int) -> Double {
    if num2 != 0 {
        return Double(num1) / Double(num2)
    }
    else {
        print("나누는 수가 0이므로 계산 할 수 없습니다.")
        return 0
    }
}

