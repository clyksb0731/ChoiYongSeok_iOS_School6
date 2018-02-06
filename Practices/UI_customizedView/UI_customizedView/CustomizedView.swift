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
    
    private func createView() {
        bottomView = UIView()
        self.addSubview(bottomView!)
        
        bgImg = UIImage(named: "bg")
        imgView = UIImageView(image: bgImg)
        imgView!.contentMode = .scaleAspectFill
        bottomView!.addSubview(imgView!)
        
        upperLabel = UILabel()
        upperLabel!.textAlignment = .center
        upperLabel!.font = UIFont.systemFont(ofSize: 80)
        bottomView!.addSubview(upperLabel!)
        
        lowerLabel = UILabel()
        lowerLabel!.textAlignment = .right
        lowerLabel!.font = UIFont.systemFont(ofSize: 40)
        bottomView!.addSubview(lowerLabel!)
        
        coverBtn = UIButton()
        coverBtn!.backgroundColor = .clear
        bottomView!.addSubview(coverBtn!)
    }
    
    private func layoutView() {
        guard let bottomView = bottomView, let imgView = imgView, let upperLabel = upperLabel, let lowerLabel = lowerLabel, let coverBtn = coverBtn else { return }
        
        bottomView.frame = self.bounds
        
        imgView.frame = self.bounds
        
        upperLabel.frame = CGRect(x: 0, y: 0, width: bottomView.bounds.size.width, height: bottomView.bounds.size.height * 2 / 3)
        
        lowerLabel.frame = CGRect(x: 0, y: upperLabel.bounds.size.height, width: bottomView.bounds.size.width, height: bottomView.bounds.size.height * 1 / 3)
        
        coverBtn.frame = self.bounds
    }
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        guard let coverBtn = coverBtn else { return }
        
        coverBtn.addTarget(target, action: action, for: controlEvents)
    }

}
