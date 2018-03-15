//
//  ViewController.swift
//  ErrorHandling_Sample
//
//  Created by 최용석 on 2018. 3. 15..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let tmpDir = NSTemporaryDirectory()
    private let filePath = NSTemporaryDirectory() + "swift.txt"
    private let errorFilePath = NSTemporaryDirectory() + "noFile.txt"
    
    enum MyError: Error {
        case errorExample
        case errorWithParam(num: Int)
    }
    
    private func createDummyFile() {
        let swift = "Swift Error Handling"
        try? swift.write(toFile: filePath, atomically: true, encoding: .utf8)
    }
    
    private func basic() {
        print("\n----------[ basic ] -----------\n")
        let swift = "Swift Error Handling"
        do {
            try swift.write(toFile: tmpDir, atomically: true, encoding: .utf8) // Error, tmpDir is Directory
            try swift.write(toFile: filePath, atomically: true, encoding: .utf8) // No Error
        }
        catch {
            print(error)
            print(error.localizedDescription)
        }
    }
    
    func threeTypesOfTry() {
        let contentsOptional = try? String(contentsOfFile: filePath)
        print(contentsOptional)
        
        let contentsUnwrapped = try! String(contentsOfFile: errorFilePath)
        print(contentsUnwrapped)
    }
    
    func throwsFunctionExample() {
        print("\n ------- [throwsFunctionExample ] ----------\n")
        print("\n ----- [NS Error] -----------\n")
        do {
            try throwNSError()
        } catch {
            print("Error: ", error)
            print("Error LocalizedDescription: ", error.localizedDescription)
            
            let e = error as NSError
            print("nserror: ", e)
            print("domian: ", e.domain)
            print("code: ", e.code)
            print("userInfor: ", e.userInfo)
        }
        
        print("\n ----- [Custom Error] -----------\n")
        do {
            try throwError()
        } catch {
            print("Error: ", error)
            print("Error LocalizedDescription: ", error.localizedDescription)
            
            let e = error as NSError
            print("nserror: ", e)
            print("domian: ", e.domain)
            print("code: ", e.code)
            print("userInfor: ", e.userInfo)
        }
        
        print("\n ----- [Matching Error] -----------\n")
        do {
            try throwError()
        } catch MyError.errorExample {
            print("errorExample")
        } catch MyError.errorWithParam(let num) {
            print("error with number param: ", num)
        } catch {
            print("The error is not MyError")
        }
    }
    
    private func throwNSError() throws {
        throw NSError(domain: "domain data" , code: 55, userInfo: ["something": 1])
    }
    
    private func throwError() throws {
//        try "1".write(toFile: tmpDir, atomically: true, encoding: .utf8)
        // throw를 쓰지 않고 try를 do catch문 으로 감싸지 않았을 경우 throw를 그냥 던저주기 때문에, 이 try 문이 들어 있는 함수에는 throws를 명시해줘야 한다.
        throw MyError.errorWithParam(num: 10)
    }
    
    private func deferOrder() {
        print("\n----------- [deferOrder] ------------\n")
        print("strat")
        defer {
            print("defer1")
        }
        print("center")
        defer {
            print("defer2")
        }
        defer {
            print("defer3")
        }
        print("end")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createDummyFile()
//        basic()
//        threeTypesOfTry() -> due to try!, error occurs
        throwsFunctionExample()
        deferOrder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

