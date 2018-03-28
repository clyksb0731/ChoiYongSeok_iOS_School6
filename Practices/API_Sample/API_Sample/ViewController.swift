//
//  ViewController.swift
//  API_Sample
//
//  Created by 최용석 on 2018. 3. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    let login: String = "https://api.lhy.kr/members/auth-token/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginCheck (_ sender: UIButton) {
        let param: Parameters = [
            "username":userName.text!,
            "password":password.text!
        ]
        
        Alamofire.request(login, method: .post, parameters: param).validate().responseData(completionHandler: { (response) in
            switch response.result {
            case .success(let data):
                print(data)
                if let loggedUser = try? JSONDecoder().decode(User.self, from: data) {
                    print(loggedUser)
                }
                
                let postListVC = self.storyboard?.instantiateViewController(withIdentifier: "PostListViewController") as! PostListViewController
                
                self.present(postListVC, animated: true, completion: nil)
                
            case .failure(let error):
                print(error.localizedDescription)
                
                let alertVC = UIAlertController(title: "Wrong User Name or password", message: "Do you wnat to sign up?", preferredStyle: .actionSheet)
                
                let yesAlert = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                    let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
                    self.present(signUpVC, animated: true, completion: nil)
                })
                
                let cancelAlert = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                })
                
                alertVC.addAction(yesAlert)
                alertVC.addAction(cancelAlert)
                
                self.present(alertVC, animated: true, completion: nil)
            }
        })
    }
}

