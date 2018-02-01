//
//  ViewController.swift
//  UI_Practices
//
//  Created by 최용석 on 2018. 2. 1..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedBtn: UIButton?
    var selectedBtnList: [UIButton]?
    var resultLb: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label practices////////////////////
        
//        var titleLb: UILabel = UILabel(frame: CGRect(x: 0, y: 100, width: self.view.bounds.size.width, height: 150))
//        titleLb.text = "UI Test View"
//        titleLb.textColor = UIColor.darkGray
//        titleLb.font = UIFont.systemFont(ofSize: 45)
//        titleLb.textAlignment = .center
//        self.view.addSubview(titleLb)
//
//        var centerTextLb: UILabel = UILabel(frame: CGRect(x: 20, y: self.view.bounds.size.height / 2, width: self.view.bounds.size.width - 40, height: 150))
//        centerTextLb.text = """
//                중간에 표시되는 텍스트 길게 작성해 볼까요?
//                여러줄을 표시할 수 있습니다.
//                이렇게 ~~~
//                """
//        centerTextLb.font = UIFont.systemFont(ofSize: 30)
//        centerTextLb.textColor = UIColor.blue
////        centerTextLb.textAlignment = .natural
//        centerTextLb.numberOfLines = 3
//        centerTextLb.lineBreakMode = .byWordWrapping
//        self.view.addSubview(centerTextLb)
        
        
          // Image practices /////////////////////
//        var tmpImg: UIImage? = UIImage(named: "apple_logo")
//        var tmpImgView: UIImageView = UIImageView(frame: CGRect(x: self.view.bounds.size.width / 2 - 50, y: self.view.bounds.size.height / 2 - 50, width: 100, height: 100))
//        tmpImgView.image = tmpImg
//        tmpImgView.contentMode = .scaleAspectFill
//        self.view.addSubview(tmpImgView)
        
        
        ///////////////////////// 버튼을 양자 택일하게 하여 값 출력 ////////////////////////////
        
//        // 1st button
//        var tmpButton1: UIButton = UIButton(type: .system)
//        tmpButton1.frame = CGRect(x: 10, y: 20, width: self.view.bounds.size.width - 40, height: 30)
//        tmpButton1.setTitle("버튼 1", for: .normal)
//        tmpButton1.setTitleColor(UIColor.blue, for: .normal)
//        tmpButton1.setTitleColor(.red, for: .selected)
//        tmpButton1.backgroundColor = .gray
//        tmpButton1.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
//        tmpButton1.tag = 1
//        self.view.addSubview(tmpButton1)
//
//        // 2nd button
//        var tmpButton2: UIButton = UIButton(type: .system)
//        tmpButton2.frame = CGRect(x: 10, y: 55, width: self.view.bounds.size.width - 40, height: 30)
//        tmpButton2.setTitle("버튼 2", for: .normal)
//        tmpButton2.setTitleColor(UIColor.blue, for: .normal)
//        tmpButton2.setTitleColor(.red, for: .selected)
//        tmpButton2.backgroundColor = .gray
//        tmpButton2.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
//        tmpButton2.tag = 2
//        self.view.addSubview(tmpButton2)
//
//        // 3rd button
//        var tmpButton3: UIButton = UIButton(type: .system)
//        tmpButton3.frame = CGRect(x: 10, y: 90, width: self.view.bounds.size.width - 40, height: 30)
//        tmpButton3.setTitle("버튼 3", for: .normal)
//        tmpButton3.setTitleColor(UIColor.blue, for: .normal)
//        tmpButton3.setTitleColor(.red, for: .selected)
//        tmpButton3.backgroundColor = .gray
//        tmpButton3.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
//        tmpButton3.tag = 3
//        self.view.addSubview(tmpButton3)
//
//        // result button
//        var btnResult: UIButton = UIButton(type: .system)
//        btnResult.frame = CGRect(x: 10, y: 145, width: self.view.bounds.size.width - 40, height: 30)
//        btnResult.setTitle("결과도출", for: .normal)
//        btnResult.setTitleColor(UIColor.blue, for: .normal)
//        btnResult.setTitleColor(.red, for: .selected)
//        btnResult.backgroundColor = .gray
//        btnResult.addTarget(self, action: #selector(showResult(_:)), for: .touchUpInside)
//        btnResult.tag = 2
//        self.view.addSubview(btnResult)
//
//        resultLb = UILabel()
//        resultLb?.frame = CGRect(x: 10, y: 200, width: self.view.bounds.size.width - 40, height: 30)
//        resultLb?.font = UIFont.systemFont(ofSize: 15)
//        resultLb?.textAlignment = .right
//        self.view.addSubview(resultLb!)

        ///////////////////////// 버튼을 양자 택일하게 하여 값 출력 ////////////////////////////
        
        ///////////////////////// 버튼을 복수로 선택하여 값 출력 ////////////////////////////
        
        // 1st button
        var tmpButton1: UIButton = UIButton(type: .system)
        tmpButton1.frame = CGRect(x: 10, y: 20, width: self.view.bounds.size.width - 40, height: 30)
        tmpButton1.setTitle("버튼 1", for: .normal)
        tmpButton1.setTitleColor(UIColor.blue, for: .normal)
        tmpButton1.setTitleColor(.red, for: .selected)
        tmpButton1.backgroundColor = .gray
        tmpButton1.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
        tmpButton1.tag = 1
        self.view.addSubview(tmpButton1)
        
        // 2nd button
        var tmpButton2: UIButton = UIButton(type: .system)
        tmpButton2.frame = CGRect(x: 10, y: 55, width: self.view.bounds.size.width - 40, height: 30)
        tmpButton2.setTitle("버튼 2", for: .normal)
        tmpButton2.setTitleColor(UIColor.blue, for: .normal)
        tmpButton2.setTitleColor(.red, for: .selected)
        tmpButton2.backgroundColor = .gray
        tmpButton2.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
        tmpButton2.tag = 2
        self.view.addSubview(tmpButton2)
        
        // 3rd button
        var tmpButton3: UIButton = UIButton(type: .system)
        tmpButton3.frame = CGRect(x: 10, y: 90, width: self.view.bounds.size.width - 40, height: 30)
        tmpButton3.setTitle("버튼 3", for: .normal)
        tmpButton3.setTitleColor(UIColor.blue, for: .normal)
        tmpButton3.setTitleColor(.red, for: .selected)
        tmpButton3.backgroundColor = .gray
        tmpButton3.addTarget(self, action: #selector(actionForTmpButtons(_:)), for: .touchUpInside)
        tmpButton3.tag = 3
        self.view.addSubview(tmpButton3)
        
        // result button
        var btnResult: UIButton = UIButton(type: .system)
        btnResult.frame = CGRect(x: 10, y: 145, width: self.view.bounds.size.width - 40, height: 30)
        btnResult.setTitle("결과도출", for: .normal)
        btnResult.setTitleColor(UIColor.blue, for: .normal)
        btnResult.setTitleColor(.red, for: .selected)
        btnResult.backgroundColor = .gray
        btnResult.addTarget(self, action: #selector(showResult(_:)), for: .touchUpInside)
        btnResult.tag = 2
        self.view.addSubview(btnResult)
        
        resultLb = UILabel()
        resultLb?.frame = CGRect(x: 10, y: 200, width: self.view.bounds.size.width - 40, height: 30)
        resultLb?.font = UIFont.systemFont(ofSize: 15)
        resultLb?.textAlignment = .right
        self.view.addSubview(resultLb!)
        
        ///////////////////////// 버튼을 복수로 선택하여 값 출력 ////////////////////////////
    }
    
    
    ///////////////////////// 버튼을 양자 택일하게 하여 값 출력 ////////////////////////////
    
//    @objc func actionForTmpButtons(_ sender: UIButton) {
//
//        if sender.isSelected == false {
//            sender.isSelected = true
//            selectedBtn?.isSelected = false
//            selectedBtn = sender
//        }
//    }
//
//    @objc func showResult(_ sender: UIButton) {
//        guard let tmpLb = resultLb else {
//            return
//        }
//
//        tmpLb.text = String((selectedBtn?.tag)!)
//
//    }
    
    ///////////////////////// 버튼을 양자 택일하게 하여 값 출력 ////////////////////////////
    
    
    ///////////////////////// 버튼을 복수로 선택하여 값 출력 ////////////////////////////
    
    @objc func actionForTmpButtons(_ sender: UIButton) {
        if selectedBtnList == nil {
            selectedBtnList = []
        }
        
        if sender.isSelected == true {
            sender.isSelected = false
            
            if !(selectedBtnList!.isEmpty) {
                for index in 0..<selectedBtnList!.count {
                    if selectedBtnList![index].tag == sender.tag {
                        selectedBtnList!.remove(at: index)
                        break
                    }
                }
            }
        }
        else {
            sender.isSelected = true
            
            if selectedBtnList!.isEmpty {
                selectedBtnList!.append(sender)
            }
            else {
                // tag 에 맞는게 없으면 append 하게 끔... !!! 이 구문 넣어야 함
                // tmpTag 없이 하는 방법?
                var tmpTag: Bool = true
                for index in 0..<selectedBtnList!.count {
                    if selectedBtnList![index].tag == sender.tag {
                        tmpTag = false
                        break
                        // selectedBtnList!.append(sender)
                    }
                }
                if tmpTag {
                    selectedBtnList!.append(sender)
                }
            }
            
        }
        
    }
    
    @objc func showResult(_ sender: UIButton) {
        guard let selectedBtnList = selectedBtnList else {
            return
        }
        
        var tmpStr = ""
        
        for list in selectedBtnList {
            tmpStr = tmpStr + String(list.tag) + " "
        }
        
        resultLb?.text = tmpStr
    }

    ///////////////////////// 버튼을 복수로 선택하여 값 출력 ////////////////////////////

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

