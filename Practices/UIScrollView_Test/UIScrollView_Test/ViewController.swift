//
//  ViewController.swift
//  UIScrollView_Test
//
//  Created by 최용석 on 2018. 2. 6..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tmpView1: UIView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        tmpView1.backgroundColor = .yellow
        
        var tmpView2: UIView = UIView(frame: CGRect(x: self.view.bounds.size.width + 50, y: 50, width: 100, height: 100))
        tmpView2.backgroundColor = .black
        
        var scrView: UIScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        scrView.contentSize = CGSize(width: self.view.bounds.size.width * 2, height: self.view.bounds.size.height)
        scrView.isPagingEnabled = true
        scrView.addSubview(tmpView1)
        scrView.addSubview(tmpView2)
        self.view.addSubview(scrView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

