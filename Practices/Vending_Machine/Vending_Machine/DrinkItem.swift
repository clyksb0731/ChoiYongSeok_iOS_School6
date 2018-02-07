//
//  DrinkItem.swift
//  Vending_Machine
//
//  Created by 최용석 on 2018. 2. 7..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class DrinkItem: UIView {
    var bottomView: UIView?
    var pdImg: UIImage?
    var imgView: UIImageView?
    var priceLabel: UILabel?
    var coverBtn: UIButton?
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView(named: String, price: Int) {
        bottomView = UIView()
        bottomView!.layer.borderWidth = 2
        bottomView!.layer.borderColor = UIColor.gray.cgColor
        self.addSubview(bottomView!)
        
        pdImg = UIImage(named: named)
        imgView = UIImageView(image: pdImg)
        bottomView!.addSubview(imgView!)
        
        priceLabel = UILabel()
        priceLabel!.textAlignment = .right
        priceLabel!.font = UIFont.systemFont(ofSize: 20)
        priceLabel!.text = "\(price)원"
        bottomView!.addSubview(priceLabel!)
        
        coverBtn = UIButton()
        coverBtn!.backgroundColor = .clear
        coverBtn!.tag = price
        coverBtn!.setTitle(named, for: .normal)
        coverBtn!.setTitleColor(.clear, for: .normal)
        bottomView!.addSubview(coverBtn!)
    }
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        guard let coverBtn = coverBtn else { return }
        
        coverBtn.addTarget(target, action: action, for: controlEvents)
    }
    
    func layoutViews() {
        guard let bottomView = bottomView, let imgView = imgView, let priceLabel = priceLabel, let coverBtn = coverBtn else { return }
        
        bottomView.frame = self.bounds
        coverBtn.frame = self.bounds
        
        imgView.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height * 0.8)
        
        priceLabel.frame = CGRect(x: self.bounds.size.width * 0.05, y: imgView.bounds.size.height, width:  self.bounds.size.width * 0.9, height: self.bounds.size.height * 0.2)
    }
}





















