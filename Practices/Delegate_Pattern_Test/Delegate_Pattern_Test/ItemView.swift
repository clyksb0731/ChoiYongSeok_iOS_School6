//
//  itemView.swift
//  Delegate_Pattern_Test
//
//  Created by 최용석 on 2018. 2. 6..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ItemView: UIView {
    private var button: UIButton?
    var delegate: ItemViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        button = UIButton()
        button!.addTarget(self, action: #selector(self.btnHandler(_:)), for: .touchUpInside)
        button!.setTitle("hihi", for: .normal)
        button!.setTitleColor(.gray, for: .normal)
        button!.frame = self.bounds
        self.addSubview(button!)
    }
    
    @objc func btnHandler(_ sender: UIButton) {
        delegate?.didSelectedItemView(self)
    }
}

protocol ItemViewDelegate {
    func didSelectedItemView(_ view: ItemView)
}
