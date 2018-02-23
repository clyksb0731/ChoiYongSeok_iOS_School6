//
//  ViewController.swift
//  Notification_Sample
//
//  Created by 최용석 on 2018. 2. 23..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tmpLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // with closure to notify
        NotificationCenter.default.addObserver(forName: Notification.Name(rawValue:"notiKey"), object: nil, queue: nil) { (tmpNoti) in
            let msg: String = tmpNoti.object as! String
            self.tmpLabel.text = msg
        }
        
        // with selector to notify
        NotificationCenter.default.addObserver(self, selector: #selector(tmpNotiFunc(_:)), name: Notification.Name(rawValue: "notiKey"), object: nil)
    }
    
    @objc func tmpNotiFunc(_ sender: Notification) {
        let msg: String = sender.object as! String
//        self.tmpLabel.text = msg
        print("\(msg) is printed by another notification addObserver")
    }

    @IBAction func goToTheNext(_ sender: UIButton) {
       let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }


}

