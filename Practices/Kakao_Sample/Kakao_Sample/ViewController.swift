//
//  ViewController.swift
//  Kakao_Sample
//
//  Created by 최용석 on 2018. 3. 29..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var thurmbnailImageView: UIImageView!
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var nickNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        KOSessionTask.meTask { [weak self] (result, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            let user = result as! KOUser
            print(user)
            
            guard let properties = user.properties,
            let nickName = properties[KOUserNicknamePropertyKey] as? String,
            let profileImageLink = properties[KOUserProfileImagePropertyKey] as? String,
            let thumbnailImageLink = properties[KOUserThumbnailImagePropertyKey] as? String
                else { return }
            
            self?.nickNameLabel.text = nickName
            
            let imageLinks = [profileImageLink, thumbnailImageLink]
            for link in imageLinks {
                let url = URL(string: link)!
                let task = URLSession.shared.dataTask(with: url, completionHandler: {
                    (data, response, error) in
                    if error != nil {
                        print(error!.localizedDescription)
                        return
                    }
                    guard let data = data, let image = UIImage(data: data) else { return }
                    
                    DispatchQueue.main.async {
                        if link == profileImageLink {
                            self?.profileImageView.image = image
                        }
                        else {
                            self?.thurmbnailImageView.image = image
                        }
                    }
                })
                task.resume()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction private func logoutButtonDidTap(_ sender: Any) {
        KOSession.shared().logoutAndClose { (success, error) in
            if error != nil {
                // Failed to logout
                return print(error!.localizedDescription) // print 함수도 void
            }
            //Logout success
        }
    }
    
    /*
     Logout이 실패 할 수 있는 상황 참고하기
     iOS 개발 가이드 on kakao api
     */


}

