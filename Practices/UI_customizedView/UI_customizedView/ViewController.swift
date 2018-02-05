//
//  ViewController.swift
//  UI_customizedView
//
//  Created by 이기쁨 on 2018. 2. 5..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var tmpView: CustomizedView = CustomizedView()
        tmpView.frame = CGRect(x: 30, y: 30, width: 200, height: 200)
        tmpView.setUpView()
        tmpView.upperLabel?.text = "위"
        tmpView.lowerLabel?.text = "아래"
        tmpView.addTarget(self, action: #selector(self.tmpAction(_:)), for: .touchUpInside)
        self.view.addSubview(tmpView)
    }
    
    @objc func tmpAction(_ sender: UIButton) {
        print("Action 성공")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

