//
//  ViewController.swift
//  UI_customizedView
//
//  Created by 이기쁨 on 2018. 2. 5..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewList: [CustomizedView]?
    var basicFrame: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var tmpView: CustomizedView = CustomizedView()
//        tmpView.frame = CGRect(x: 30, y: 30, width: 200, height: 200)
//        tmpView.setUpView()
//        tmpView.upperLabel?.text = "위"
//        tmpView.lowerLabel?.text = "아래"
//        tmpView.addTarget(self, action: #selector(self.tmpAction(_:)), for: .touchUpInside)
//        self.view.addSubview(tmpView)
        createViews(number: 5)
        layoutCustomViews(viewList: viewList, number: 3, width: 115)
        
    }
    
    func createViews(number num: Int) {
        viewList = []
        
        for count in 0..<num {
            let tmpCustomView: CustomizedView = CustomizedView()
            tmpCustomView.createView()  // 구성 view 생성
            tmpCustomView.upperLabelText = String(-1 * (count - num))
            tmpCustomView.lowerLabelText = String(num + 1)
//            tmpCustomView.tagIndex = -1 * (count - num)
            tmpCustomView.setButtonTag(number: -1 * (count - num))
            tmpCustomView.setLabelsFontSize(first: 30, second: 10)
            tmpCustomView.addTarget(self, action: #selector(tmpAction(_:)), for: .touchUpInside)
            viewList?.append(tmpCustomView)
        }
    }
    
    func layoutCustomViews(viewList: [CustomizedView]?, number num: Int, width: CGFloat) {
        guard let viewList = viewList else { return }
        
        basicFrame = UIView(frame: CGRect(x: 10, y: 20, width: self.view.bounds.size.width, height: self.view.bounds.size.height - 20))
        
        self.view.addSubview(basicFrame!)
        
        for index in 0..<viewList.count {
            let row = index / num
            let col = index % num
            
            viewList[index].frame = CGRect(x: (10 + width) * CGFloat(col), y: width * CGFloat(row), width: width, height: width)
            viewList[index].layoutView()
            basicFrame?.addSubview(viewList[index])
        }
        
    }
    
    @objc func tmpAction(_ sender: UIButton) {
        print("\(sender.tag)", "*****", "\(sender.title(for: .normal)!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

