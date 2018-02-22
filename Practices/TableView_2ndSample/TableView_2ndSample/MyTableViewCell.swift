//
//  MyTableViewCell.swift
//  TableView_2ndSample
//
//  Created by 최용석 on 2018. 2. 22..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    var contactImageView: UIImageView?
    var contactNameLb: UILabel?
    var descriptionLb: UILabel?
    
    var contactNameLbFontSize: CGFloat?
    var descriptionLbFontSize: CGFloat?
    
    var contactImage: UIImage? {
        get {
            return contactImageView?.image
        }
        set {
            contactImageView?.image = newValue
        }
    }
    
    var contactLbText: String? {
        get {
            return contactNameLb?.text
        }
        set {
            contactNameLb?.text = newValue
        }
    }
    
    var descriptionLbText: String? {
        get {
            return contactNameLb?.text
        }
        set {
            contactNameLb?.text = newValue
        }
    }
    
    func setLbsFontSize() {
        contactNameLbFontSize = self.contentView.bounds.height * 0.6 * 0.8
        descriptionLbFontSize = self.contentView.bounds.height * 0.4 * 0.8
    }
    
    func initContactImageView() {
        contactImageView = UIImageView()
    }
    
    func initContactNameLb() {
        contactNameLb = UILabel()
        contactNameLb!.textAlignment = .center
        contactNameLb!.textColor = .black
        if let contactNameLbFontSize = contactNameLbFontSize {
            contactNameLb!.font = UIFont.boldSystemFont(ofSize: contactNameLbFontSize)
        }
        else {
            contactNameLb!.font = UIFont.boldSystemFont(ofSize: 7)
        }
    }
    
    func initDescriptionLb() {
        descriptionLb = UILabel()
        descriptionLb!.textAlignment = .center
        descriptionLb!.textColor = .gray
        if let descriptionLbFontSize = descriptionLbFontSize {
            descriptionLb!.font = UIFont.boldSystemFont(ofSize: descriptionLbFontSize)
        }
        else {
            descriptionLb!.font = UIFont.boldSystemFont(ofSize: 7)
        }
    }
    
    func setComponentsLayout() {
        guard let contactImageView = contactImageView, let contactNameLb = contactNameLb, let descriptionLb = descriptionLb else { return }
        contactImageView.frame = CGRect(x: 0, y: 0, width: self.contentView.bounds.size.width * 0.1, height: self.contentView.bounds.size.height)
        contactNameLb.frame = CGRect(x: self.contentView.bounds.size.width * 0.1, y: 0, width: self.contentView.bounds.size.width * 0.9, height: self.contentView.bounds.size.height * 0.6)
        descriptionLb.frame = CGRect(x: self.contentView.bounds.size.width * 0.1, y: contactNameLb.bounds.size.height, width: self.contentView.bounds.size.width * 0.9, height: self.contentView.bounds.size.height * 0.4)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // to make Labels' font size fit to themselves
        setLbsFontSize()
        
        // to initialize components
        initContactImageView()
        initContactNameLb()
        initDescriptionLb()
        
        // to set components' layout
        setComponentsLayout()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
