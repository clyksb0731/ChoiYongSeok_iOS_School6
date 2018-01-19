////: Playground - noun: a place where people can play
//
//import UIKit
//
//// 20180115 실습 ----------------------------------------------------------------------------------------------
//// 이름(문자열)을 받아서 이름을 출력하는 함수
//func printName(with name: String) {
//    print(name)
//}
//
//// 나이 (정수)를 받아서 출력하는 함수
//func printAge(Integer age: Int) {
//
//}
//
//// 이름과 주소를 입력받아 자기소개글을 프린트 하는 함수
//func printPR(name: String, address: String){
//    print("저의 이름은 \(name)입니다. 그리고 저는 \(address)에 살고 있습니다.")
//}
//
//// 정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
//func divideBy2(with num: Int) -> Double {
//    return Double(num) / 2
//}
//
//// 정수를 하나 입력받아서 제곱을 반환해주는 함수
//func square(with num: Int) -> Int {
//    return num * num
//}
//
//// 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
//func additionCalculator(first num1: Int, second num2: Int) -> Int {
//    return num1 + num2
//}
//
//// 두개의 정수를 입력받아 두수의 차을 반환해주는 함수
//func subtractionCalculator(first num1: Int, second num2: Int) -> Int {
//    return num1 - num2
//}
//
//// 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
//func multiplicationCalculator(first num1: Int, second num2: Int) -> Int {
//    return num1 * num2
//}
//
//// 두개의 정수를 입력받아 두수의 나눗셈을 반환해주는 함수
//func divisionCalculator(first num1: Int, second num2: Int) -> Double {
//    if num2 != 0 {
//        return Double(num1) / Double(num2)
//    }
//    else {
//        print("나누는 수가 0이므로 계산 할 수 없습니다.")
//        return 0
//    }
//}
//
//// 부모님과 내 나이를 입력 후 그 나이차를 프린트 하는 함수
//func ageDiff(momAge mom: Int, myAge me: Int) {
//    print("어머니의 나이는 \(mom)세이고 내 나이는 \(me)살이므로 우리의 나이차이는 \(mom - me)살 입니다.")
//}
//
//// 시험점수 여러개를 입력받아서 (4개 이상) 평균을 반환해주는 함수
//func average(eng: Int, math: Int, literature: Int, science: Int) -> Double {
//    return Double(eng + math + literature + science) / 4
//}
//
//// 정수를 하나 입력 받아서 실수로 변환 후 반환하는 함수
//func changeDataType(integer num: Int) -> Double {
//    return Double(num)
//}
//
//// 정수를 두개를 입력받아 두수를 합친 수를 출력하는 함수
//func stickTwoNums(integer1 num1: Int, integer2 num2: Int) -> String {
//    return String(num1) + String(num2)
//}
//
//// 실수를 하나 입력받아서 소수점 첫 번째 자리에서 반올림 후 정수를 반환해주는 함수
//func roundNum(realNumber num: Double) -> Int {
//    return Int(num + 0.5)
//}
//
//// 20180116 실습 ----------------------------------------------------------------------------------------------
//// if
////정수를 하나 입력받아 그 수가 짝수이면 true를 반환하는 함수
//func checkEvenNum(integer num: Int) -> Bool {
//    if num % 2 == 0 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
////문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
//func compareTwoNums(first str1: String, second str2: String) -> Bool {
//    if str1 == str2 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
////두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
//func biggerNumBTWTwoNums(first num1: Int, second num2: Int) -> Int {
//    if num1 > num2 {
//        return num1
//    }
//    else {
//        return num2
//    }
//}
//
////정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
//func checkMultipleWithThree(number num: Int) -> Bool {
//    if num % 3 == 0 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
//// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
//func divisionBTWTwoNums(first num1: Int, second num2: Int) -> Double {
//    if num2 != 0 {
//        return Double(num1) / Double (num2)
//    }
//    else {
//        return 0
//    }
//}
//
////시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
//func grader(score: Int) -> String {
//    if score >= 95 {
//        return "A+"
//    }
//    else if score >= 90 && score < 95 {  // 순차적 판단으로 인해 && 포함한 뒤의 비교 연산은 필요없다.
//        return "A"
//    }
//    else if score >= 85 && score < 90 {
//        return "B+"
//    }
//    else if score >= 80 && score < 85 {
//        return "B"
//    }
//    else if score >= 75 && score < 80 {
//        return "C+"
//    }
//    else if score >= 70 && score < 75 {
//        return "C"
//    }
//    else if score >= 65 && score < 70 {
//        return "D+"
//    }
//    else if score >= 60 && score < 65 {
//        return "D"
//    }
//    else {
//        return "F"
//    }
//}
//
////여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
//func averageGrades(grade1 str1: String, grade2 str2: String, grade3 str3: String) -> Double {
//   return (pointer(grade: str1) + pointer(grade: str2) + pointer(grade: str3)) / 3
//}
//
//func pointer(grade: String) -> Double {
//    if grade == "A+" {
//        return 4.5
//    }
//    else if grade == "A" {
//        return 4.0
//    }
//    else if grade == "B+" {
//        return 3.5
//    }
//    else if grade == "B" {
//        return 3.0
//    }
//    else if grade == "C+" {
//        return 2.5
//    }
//    else if grade == "C" {
//        return 2.0
//    }
//    else if grade == "D+" {
//        return 1.5
//    }
//    else if grade == "D" {
//        return 1.0
//    }
//    else if grade == "F" {
//        return 0
//    }
//    return 0
//}
//
////윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
//func leapYearChecker(year: Int) -> Bool {
//    if year % 4 == 0 {
//        if year % 100 == 0 {
//            if year % 400 == 0 {
//                return true
//            }
//            return false
//        }
//        return true
//    }
//    return false
//}
//
////세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false 반환하는 함수
//func checkPositiveNumByMuliplyingWith(first num1: Int, second num2: Int, third num3: Int) -> Bool {
//    if num1 * num2 * num3 > 0 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
////switch
//// 월을 정수로 입력받아 해당월의 영어 이름을 반환해 주는 함수 (13 >> Error)
//func changeMonth(with num: Int) -> String {
//    switch num {
//    case 1:
//        return "January"
//    case 2:
//        return "February"
//    case 3:
//        return "March"
//    case 4:
//        return "April"
//    case 5:
//        return "May"
//    case 6:
//        return "June"
//    case 7:
//        return "July"
//    case 8:
//        return "August"
//    case 9:
//        return "September"
//    case 10:
//        return "December"
//    case 11:
//        return "November"
//    case 12:
//        return "December"
//    default:
//        return "Error"
//    }
//}
//
//// 년, 월을 입력받아 해당 달의 마지막 날을 반환 해주는 함수 (윤년 고려)
//func getLastDayFrom(year: Int, month: Int) -> Int {
//    let date: (Int, Int) = (year, month)
//    switch(date) {
//    case (_, 1):
//        return 31
//    case (let x, 2) where x % 4 == 0 && x % 100 != 0 || x % 400 == 0:
//        return 29
//    case (_, 2):
//        return 28
//    case (_, 3):
//        return 31
//    case (_, 4):
//        return 30
//    case (_, 5):
//        return 31
//    case (_, 6):
//        return 30
//    case (_, 7):
//        return 31
//    case (_, 8):
//        return 31
//    case (_, 9):
//        return 30
//    case (_, 10):
//        return 31
//    case (_, 11):
//        return 30
//    case (_, 12):
//        return 31
//    default:
//        return 0
//    }
//}
//getLastDayFrom(year: 2005, month: 2)
//getLastDayFrom(year: 2016, month: 2)
//
//// 시험 점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수
//func graderSwitch(score: Int) -> String {
//    switch score {
//    case 95... :
//        return "A+"
//    case 90 ..< 95:
//        return "A"
//    case 85 ..< 90:
//        return "B+"
//    case 80 ..< 85:
//        return "B"
//    case 75 ..< 80:
//        return "C+"
//    case 70 ..< 75:
//        return "C"
//    case 65 ..< 70:
//        return "D+"
//    case 60 ..< 65:
//        return "D"
//    default:
//        return "F"
//    }
//}
//
//// 도형 면적 구하기 함수
//
///// 도형 넓이 구하는 함수
/////
///// - Parameters:
/////   - lowerSide: 밑변
/////   - upperSide: 윗변
/////   - height: 높이
/////   - radius: 반경
///// - Returns: 넓이
//func areaCalculatorWith(lowerSide: Double? = nil, upperSide: Double? = nil, height: Double? = nil, radius: Double? = nil) -> Double {
//    let values: (Double?, Double?, Double?, Double?) = (lowerSide, upperSide, height, radius)
//
//    switch values {
//    case (let x?, nil, nil, nil):
//        return x * x
//
//    case (let x?, let y?, nil, nil):
//        return x * y
//
//    case (let x?, let y?, let z?, nil):
//        return (x + y) * z / 2
//
//    case (let x?, nil, let z?, nil):
//        return x * z / 2
//    case (nil, nil, nil, let r?):
//        return r * r * 3.14
//    default: -1
//    }
//    return 0
//}
//
//print(areaCalculatorWith(lowerSide: 4))

// 20180118 실습 ----------------------------------------------------------------------------------------------
// 구구단 단 입력하면 해당하는 구구단 출력하는 함수
//func timesTable(times: Int) {
//    print("\(times)단: ")
//    var count: Int = 0
//    while(count < 9) {
//        count += 1
//        print("\(times) X \(count) = \(times * count)")
//    }
//}
//
//timesTable(times: 2)
//print() // 한줄 띄우기
//
//// 삼각수 구하기
//func triangular(finalNum num: Int) -> Int {
//    var count = num
//    var sum: Int = 0
//
//    while(count > 0) {
//        sum += count
//        count -= 1
//    }
//
//    return sum
//}
//
//print(triangular(finalNum: 10))
//print() // 한줄 띄우기
//
//// 각 자리수 더하기 함수
//func addAll(Number num: Int) -> Int {
//    var tmpNum: Int = num
//    var sum: Int = 0
//
//    while(tmpNum > 0) {
//        sum = sum + (tmpNum % 10)
//        tmpNum /= 10
//    }
//
//    return sum
//}
//
//print(addAll(Number: 123))
//print() // 한줄 띄우기
//
//// 숫자 리버스 함수
//func revers(Number num: Int) -> Int {
//    var digits: Int = 0
//    var tmpNum = num
//    var resultNum = 0
//
//    while(tmpNum > 0) {
//        digits += 1
//        tmpNum /= 10
//    }
////    print("digit: \(digits)")
//
//    tmpNum = num
////    print("tmpNum: \(tmpNum)")
//
//    while(tmpNum > 0) {
//        var tmpResult: Int = 0
//        var tmpDigits: Int = digits
//        tmpResult = (tmpNum % 10)
//        while(tmpDigits > 1) {
//            tmpResult *= 10
//            tmpDigits -= 1
//        }
//        tmpNum /= 10
//        digits -= 1
//        resultNum = resultNum + tmpResult
//    }
//
//    return resultNum
//}
//
//// revers 다른 버전
//func reversAnotherVersion(Number num: Int) -> Int {
//    var tmpNum: Int = num
//    var resultNum: Int = 0
//
//    while(tmpNum > 0) {
//        resultNum = resultNum * 10 + tmpNum % 10
//        tmpNum /= 10
//    }
//
//    return resultNum
//}
//
//print(revers(Number: 341))
//
//print(reversAnotherVersion(Number: 123))
//print() // 한줄 띄우기
//
//// 단을 받아서 출력해주는 함수 (for문으로 변경)
//func timesTable_for(Number num: Int) {
//    print("\(num)단:")
//    for index in 1...9 {
//        print("\(num) X \(index) = \(num * index)")
//    }
//}
//
//print(timesTable_for(Number: 7))
//print() // 한줄 띄우기
//
//// 팩토리얼
//func factorial(Number num: Int) -> Int {
//    var tmpNum: Int = 1
//    print("\(num)!")
//    for index in 1...num {
//        tmpNum = tmpNum * index
//    }
//    return tmpNum
//}
//
//print(factorial(Number: 6))
//print()
//
//// Collatz 추측 알고리즘 - 입력된 수가 짝수라면 2로 나누고, 홀수라면 3을 곱하고 1을 더한 다음 결과로 나온 수에 같은 작업을 1이 될때까지 반복할 경우 모든 수가 1이 된다는 추측
//// 단 500번을 반복해도 1이 되지 않는다면 -1을 반환
//func collatz(Number num: Int) -> Int {
//    var tmpNum: Int = num
//
//    for index in 0...500 {
//        if tmpNum == 1 {
//            return index
//        }
//        else {
////            print("temp: \(index), \(tmpNum)")
//            if tmpNum % 2 == 0 {
//                tmpNum /= 2
//            }
//            else {
//                tmpNum = tmpNum * 3 + 1
//            }
//        }
//    }
//    return -1
//}
//
//print(collatz(Number: 6))
//print()
//
//// Harshad 수
//// 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나뉘어 떨어져야 한다. harshad 수이면 true를 아니면 false를 반환한다.
//func harshad(Number num: Int) -> Bool {
//    var tmpNum: Int = num
//    var sum: Int = 0
//
//    while tmpNum > 0 {
//        sum = sum + tmpNum % 10
//        tmpNum /= 10
//    }
//
//    if num % sum == 0 {
//        return true
//    }
//    else {
//        return false
//    }
//}
//
//harshad(Number: 12) ? print("Harshad") : print("Not harshad")
//print(harshad(Number: 12))

// 20180118 실습 ----------------------------------------------------------------------------------------------
func arrayTest() {
    var list: [String] = ["my", "name", "is", "Yongseok", "Choi"]
    list.append("입니다.")
    print("list배열의 총 갯수는:", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("I will introuduce it myself", at: 0)
    
    for text in list {
        print(text)
    }
}

arrayTest()
