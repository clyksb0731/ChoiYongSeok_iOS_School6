//
//  ViewController.swift
//  UserDefault_Sample
//
//  Created by 최용석 on 2018. 2. 9..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

//let key: String = "UserData"

class ViewController: UIViewController {

    @IBOutlet weak var idTF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var ageTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addAction(_ sender: UIButton) {
        if var list = UserDefaults.standard.array(forKey: idTF!.text!) as? [[String:String]] {
            list.append(["name":nameTF!.text!])
            list.append(["age":ageTF!.text!])
            UserDefaults.standard.set(list, forKey: idTF!.text!)
            print("추가 되었습니다.")
        }
        else {
            let newIDList = [["name":nameTF!.text!], ["age":ageTF!.text!]]
            UserDefaults.standard.set(newIDList, forKey: idTF!.text!)
            print("추가 되었습니다.")
        }
    }
    
    @IBAction func printAction(_ sender: UIButton) {
        if let list = UserDefaults.standard.array(forKey: idTF!.text!) as? [[String:String]] {
            print("id: \(idTF!.text!)의 정보는...")
            for index in list {
                for (key, value) in index {
                    print("\(key) is \(value)")
                }
                print(" ")
            }
        }
        else {
            print("There is no data")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

