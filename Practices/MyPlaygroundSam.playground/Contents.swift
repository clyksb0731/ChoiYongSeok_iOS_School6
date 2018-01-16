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
func printPR(name: String, address: String){
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

// 부모님과 내 나이를 입력 후 그 나이차를 프린트 하는 함수
func ageDiff(momAge mom: Int, myAge me: Int) {
    print("어머니의 나이는 \(mom)세이고 내 나이는 \(me)살이므로 우리의 나이차이는 \(mom - me)살 입니다.")
}

// 시험점수 여러개를 입력받아서 (4개 이상) 평균을 반환해주는 함수
func average(eng: Int, math: Int, literature: Int, science: Int) -> Double {
    return Double(eng + math + literature + science) / 4
}

// 정수를 하나 입력 받아서 실수로 변환 후 반환하는 함수
func changeDataType(integer num: Int) -> Double {
    return Double(num)
}

// 정수를 두개를 입력받아 두수를 합친 수를 출력하는 함수
func stickTwoNums(integer1 num1: Int, integer2 num2: Int) -> String {
    return String(num1) + String(num2)
}

// 실수를 하나 입력받아서 소수점 첫 번째 자리에서 반올림 후 정수를 반환해주는 함수
func roundNum(realNumber num: Double) -> Int {
    return Int(num + 0.5)
}
