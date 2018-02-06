//
//  CustomizedView.swift
//  UI_customizedView
//
//  Created by 최용석 on 2018. 2. 5..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class CustomizedView: UIView {

    var bottomView: UIView?
    var bgImg: UIImage?
    var imgView: UIImageView?
    var upperLabel: UILabel?
    var lowerLabel: UILabel?
    var coverBtn: UIButton?
    
    var upperLabelText: String? {
        get {
            guard let upperLabel = upperLabel else { return nil }
            return upperLabel.text
        }
        set {
            upperLabel?.text = newValue
        }
    }
    
    var lowerLabelText: String? {
        get {
            guard let lowerLabel = lowerLabel else { return nil }
            return lowerLabel.text
        }
        set {
            lowerLabel?.text = newValue
        }
    }
    
//    var tagIndex: Int = 0 {
//        willSet {
//            guard let coverBtn = coverBtn else { return }
//            
//            coverBtn.tag = newValue
//        }
//    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    func setUpView() {
        createView()
        layoutView()
    }
    
    
    func createView() {
        bottomView = UIView()
        self.addSubview(bottomView!)
        
        bgImg = UIImage(named: "bg")
        imgView = UIImageView(image: bgImg)
        imgView!.contentMode = .scaleAspectFill
        bottomView!.addSubview(imgView!)
        
        upperLabel = UILabel()
        upperLabel!.textAlignment = .center
//        upperLabel!.font = UIFont.systemFont(ofSize: 80)
        upperLabel!.textColor = .green
        bottomView!.addSubview(upperLabel!)
        
        lowerLabel = UILabel()
        lowerLabel!.textAlignment = .right
//        lowerLabel!.font = UIFont.systemFont(ofSize: 40)
        lowerLabel!.textColor = .blue
        bottomView!.addSubview(lowerLabel!)
        
        coverBtn = UIButton()
        coverBtn!.setTitle("임시번호", for: .normal) ///////////// 테스트용
        coverBtn!.setTitleColor(.clear, for: .normal) //////////// 테스트용
        coverBtn!.backgroundColor = .clear
        bottomView!.addSubview(coverBtn!)
    }
    
    func setLabelsFontSize(first uLbFont: CGFloat, second lLbFont: CGFloat) {
        guard let upperLabel = upperLabel, let lowerLabel = lowerLabel else { return }
        upperLabel.font = UIFont.systemFont(ofSize: uLbFont)
        lowerLabel.font = UIFont.systemFont(ofSize: lLbFont)
    }
    
    func layoutView() {
        guard let bottomView = bottomView, let imgView = imgView, let upperLabel = upperLabel, let lowerLabel = lowerLabel, let coverBtn = coverBtn else { return }
        
        bottomView.frame = self.bounds
        
        imgView.frame = self.bounds
        
        upperLabel.frame = CGRect(x: self.bounds.size.width / 10, y: 0, width: self.bounds.size.width - self.bounds.size.width / 5, height: self.bounds.size.height * 2 / 5)
        
        lowerLabel.frame = CGRect(x: self.bounds.size.width / 10, y: self.bounds.size.height * 4 / 5, width: self.bounds.size.width - self.bounds.size.width / 5, height: self.bounds.size.height * 1 / 5)
        
        coverBtn.frame = self.bounds
    }
    
    func setButtonTag(number num: Int) {
        guard let coverBtn = coverBtn else { return }
        
        coverBtn.tag = num
    }
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        guard let coverBtn = coverBtn else { return }
        
        coverBtn.addTarget(target, action: action, for: controlEvents)
    }

}
