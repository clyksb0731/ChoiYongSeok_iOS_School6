//
//  ViewController.swift
//  Delegate_Pattern_Test
//
//  Created by 최용석 on 2018. 2. 6..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ItemViewDelegate {

    var customizedView: ItemView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customizedView = ItemView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        customizedView!.backgroundColor = .orange
        customizedView!.delegate = self
        self.view.addSubview(customizedView!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelectedItemView(_ view: ItemView) {
        print("델리게이트 패턴 작동")
        view.backgroundColor = .yellow
    }
}

