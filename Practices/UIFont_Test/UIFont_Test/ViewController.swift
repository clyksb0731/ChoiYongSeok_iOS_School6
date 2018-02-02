//
//  ViewController.swift
//  UIFont_Test
//
//  Created by 최용석 on 2018. 2. 2..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //seeFontsInside()  // 이 App에서 사용하는 폰트 확인하기
        
//        // fonts comparision on the labels
//        let lb1: UILabel = UILabel(frame: CGRect(x: 10, y: 30, width: 300, height: 50))
//        lb1.text = "폰트 비교하기"
//        lb1.font = UIFont(name: "NanumGothicExtraBold", size: 20)
//        self.view.addSubview(lb1)
//        
//        let lb2: UILabel = UILabel(frame: CGRect(x: 10, y: 90, width: 300, height: 50))
//        lb2.text = "폰트 비교하기"
//        lb2.font = UIFont.systemFont(ofSize: 20)
//        self.view.addSubview(lb2)
        
        // Make customized button
        
        let tmpSubView1: MyCustomView = MyCustomView()
        tmpSubView1.reFrame = CGRect(x: 0, y: 20, width: 300, height: 100)
        let tmpSubView2: MyCustomView = MyCustomView(frame: CGRect(x: 0, y: tmpSubView1.bounds.size.height + 30, width: 200, height: 100))
        
        tmpSubView1.setTitle("임시버튼", for: .normal)
        tmpSubView1.setTitle("임시버튼", for: .highlighted)
        
        tmpSubView2.setTitle("버튼", for: .normal)
        tmpSubView2.setTitle("버튼", for: .highlighted)
        
        self.view.addSubview(tmpSubView1)
        self.view.addSubview(tmpSubView2)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // iOS에서 사용하는 폰트 확인 Method (사용되는 것은 fontName)
    func seeFontsInside() {
        let fontFamilies: [String] = UIFont.familyNames
        for font in fontFamilies {
            print("*******\(font)*******")
            let fontNames: [String] = UIFont.fontNames(forFamilyName: font)
            for font in fontNames {
                print("ㄴ>>\(font)")
            }
        }
        
    }


}

