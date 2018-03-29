//
//  LoginViewController.swift
//  Kakao_Sample
//
//  Created by 최용석 on 2018. 3. 29..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction private func kakaoLogin(_ sender: UIButton) {
        guard let session = KOSession.shared() else { return }
        
        // Close Old Session
        session.isOpen() ? session.close() : () // () 는 아무것도 안할 때
        
        session.open { (error) in
            guard session.isOpen() else {
                // Open Session Failed
                return
            }
            // Login Success
        }        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
