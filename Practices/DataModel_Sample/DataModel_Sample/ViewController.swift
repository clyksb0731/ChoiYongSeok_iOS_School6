//
//  ViewController.swift
//  DataModel_Sample
//
//  Created by 최용석 on 2018. 2. 26..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var list: [[String:Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var modelList: [UserDataModel] = []
        for dic in list {
            if let data = UserDataModel(dic: dic) {
                modelList.append(data)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

