//
//  ViewController.swift
//  SignUp_Sample
//
//  Created by 최용석 on 2018. 2. 18..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tmpStartAction(_ sender: UIButton) {
        // root view controller on navigation controller
        let naviRootVC: SignInViewController = self.storyboard!.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        // navigation controller
        let naviC: UINavigationController = UINavigationController(rootViewController: naviRootVC)
        // to have navigation tool bar hidden
        naviC.setNavigationBarHidden(true, animated: false)
        
        self.present(naviC, animated: true, completion: nil)
    }
}

