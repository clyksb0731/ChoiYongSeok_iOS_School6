//
//  SignUpViewController.swift
//  API_Sample
//
//  Created by 최용석 on 2018. 3. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit
import Alamofire

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var firstName: UITextField?
    @IBOutlet weak var lastName: UITextField?
    @IBOutlet weak var email: UITextField?
    
    let signUp: String = "https://api.lhy.kr/members/signup/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp (_ sender: UIButton) {
        let param: Parameters = [
            "username":userName.text!,
            "password":password.text!,
            "email":email?.text ?? "",
            "firstName":firstName?.text ?? "",
            "lastName":lastName?.text ?? ""
        ]
        

//        let urlRequest = URLRequest(url: )
//        urlRequest.
//        var imgData = ~~~
//        Alamofire.upload(multipartFormData: <#T##(MultipartFormData) -> Void#>, with: <#T##URLRequestConvertible#>, encodingCompletion: <#T##((SessionManager.MultipartFormDataEncodingResult) -> Void)?##((SessionManager.MultipartFormDataEncodingResult) -> Void)?##(SessionManager.MultipartFormDataEncodingResult) -> Void#>)

        
        
        Alamofire.request(signUp, method: .post, parameters: param).validate().responseData(completionHandler: { (response) in
//            var tmpCode = response.response?.statusCode // failure code 별
            switch response.result {
            case .success(let data):
                print(data)
                if let signedUpUser = try? JSONDecoder().decode(User.self, from: data) {
                    print(signedUpUser)
                }
                
                let postListVC = self.storyboard?.instantiateViewController(withIdentifier: "PostListViewController") as! PostListViewController
                
                self.present(postListVC, animated: true, completion: nil)
                
            case .failure(let error):
                print(error.localizedDescription)
                
                let alertVC = UIAlertController(title: "Existing User or Empty on password", message: "Try Again", preferredStyle: .alert)
                
                let okAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
                
                alertVC.addAction(okAlert)
                
                self.present(alertVC, animated: true, completion: nil)
            }
        })
    }
}
