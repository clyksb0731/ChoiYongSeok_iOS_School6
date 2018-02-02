//
//  MyCusomView.swift
//  UIFont_Test
//
//  Created by 최용석 on 2018. 2. 2..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class MyCustomView: UIView {

    var btnImg: UIImageView?
    var btnLb: UILabel?
    var btnLbState: [String:String]?
    var btn: UIButton?
    
    var title: String? {
        get {
            guard let btnLb = btnLb else { return nil }
            return btnLb.text
        }
        set {
            btnLb?.text = newValue
        }
    }
    
//    override var frame: CGRect {
//        get {
//            return super.frame
//        }
//        set {
//            super.frame = newValue
//            createView()
//        }
//    }
    
    var reFrame: CGRect {
        get {
            return self.frame
        }
        set{
            self.frame = newValue
            createView()
        }
    }
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .gray
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        // * deployments of objects
        // ** image
        btnImg = UIImageView(image: UIImage(named: "logo"))
        btnImg?.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width / 2, height: self.bounds.size.height)
        btnImg?.contentMode = .scaleAspectFit
        self.addSubview(btnImg!)
        
        // ** label
        btnLb = UILabel(frame: CGRect(x: btnImg!.bounds.size.width
            , y: 0, width: self.bounds.size.width / 2, height: self.bounds.size.height))
        btnLb?.font = UIFont.systemFont(ofSize: 25)
        btnLb?.textAlignment = .center
        self.addSubview(btnLb!)
        
        // ** button
        btn = UIButton(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        btn?.backgroundColor = UIColor.clear
        btn?.addTarget(self, action: #selector(self.setHighlighted(_:)), for: .touchDown)
        btn?.addTarget(self, action: #selector(self.setHighlighted(_:)), for: .touchDragEnter)
        btn?.addTarget(self, action: #selector(self.setNormal(_:)), for: .touchUpInside)
        btn?.addTarget(self, action: #selector(self.setNormal(_:)), for: .touchDragExit)
        self.addSubview(btn!)
        
        
    }
    
    func setTitle(_ title: String?, for state: UIControlState) {
        if btnLbState == nil {
            btnLbState = [:]
        }
        
        switch state {
        case .highlighted:
            btnLbState?.updateValue(title!, forKey: "highlighted")
        case .selected:
            btnLbState?.updateValue(title!, forKey: "selected")
        case .normal:
            btnLbState?.updateValue(title!, forKey: "normal")
            self.btnLb?.textColor = UIColor.black
            self.title = title!
            
        default:
            btnLbState?.updateValue(title!, forKey: "normal")  // 없애거나 바꿀 수 있나?
            self.btnLb?.textColor = UIColor.black
            self.title = title!
        }
    }
    
    
    
    @objc func setHighlighted(_ sender: UIButton) {
        guard let btnLbState = btnLbState, !(btnLbState.isEmpty) else { return }
        
        self.btnLb?.textColor = UIColor.orange
        self.title = btnLbState["highlighted"]
        
    }
    
    @objc func setNormal(_ sender: UIButton) {
        guard let btnLbState = btnLbState, !(btnLbState.isEmpty) else { return }
        
        self.btnLb?.textColor = UIColor.black
        self.title = btnLbState["normal"]
    }
}
