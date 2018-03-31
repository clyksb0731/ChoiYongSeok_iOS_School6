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
        
        session.open(completionHandler: { (error) in
            guard session.isOpen() else {
                // Open Session Failed
                // 에러코드는 KOErrorCode 참고
                // error! 는 왜?
                error != nil ? print(error!.localizedDescription) : print("Chanceled")
                return
            }
            // Login Success
            // Session Login 후처리는 KOSessionDidChange Notification을 통해 처리
            print("Login Success")
        }, authTypes: [NSNumber(value: KOAuthType.talk.rawValue)])
        
        // KOAuthType - talk(2), sttory(4), account(8)

            // AppDelegate에 특별히 아무것도 만들어 놓지 않았을 때
            // let appDelegate = UIApplication.shared.delegate as! AppDelegate
            // appDelegate.setupRootViewController()
            
            // singleton pattern으로서 만들어 놨을 때는 이렇게 처리
            // AppDelegate.instance.setupRootViewController()
            
      
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
