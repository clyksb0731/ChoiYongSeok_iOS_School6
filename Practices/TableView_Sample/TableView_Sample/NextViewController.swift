//
//  NextViewController.swift
//  TableView_Sample
//
//  Created by 최용석 on 2018. 2. 21..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    let tmpNtLb: UILabel = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        self.view.backgroundColor = .white
        
        
        tmpNtLb.backgroundColor = UIColor.brown
        tmpNtLb.textColor = .black
        tmpNtLb.textAlignment = .center
        tmpNtLb.font = UIFont.systemFont(ofSize: 12)
        
        self.view.addSubview(tmpNtLb)
    }
    
    func setLabelText(title: String) {
        tmpNtLb.text = title
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
