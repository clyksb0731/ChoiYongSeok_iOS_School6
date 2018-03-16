//
//  ViewController.swift
//  URLScheme_Run_Sample
//
//  Created by 최용석 on 2018. 3. 16..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        openFacebook()
        openMyApp()
        
    }
    
    // 여러 scheme들
    // 전화: tel://010-1234-5678
    // 페이스타입: facetime://010-1234-5678
    // 애플맵 검색 텍스트: http://maps.apple.com/?q=searchText
    // 애플맵 (위도, 경도 지정) http://maps.apple.com/?ll=latitude(숫자로변경),longitude(숫자로변경)
    // 앱스토어 (구글맵) https://itunes.apple.com/kr/app/google-maps/id585027354?mt=8
    // 유투브 (LSApplication에 등록해야 할지도..) https://youtube.com/watch?v=8zYnNdJhZQw
    
    // 설정앱을 여는 함수
    private func openSetting() {
        guard let settingURL = URL(string: UIApplicationOpenSettingsURLString), UIApplication.shared.canOpenURL(settingURL) else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(settingURL)
//            UIApplication.shared.open(<#T##URL#>, options: <#T##[String : Any]#>, completionHandler: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>) -> 다중 url scheme이 있을 때 options를 사용하여 해결
        }
        else {
            UIApplication.shared.canOpenURL(settingURL)
        }
    }
    
    // 메일 앱을 여는 함수, 받는 대상을 지정할 수 있음
    private func openMail() {
        let mailURL = URL(string: "mailto://")!
        let mailURL2 = URL(string: "mailto://someone@mail.com")
        if UIApplication.shared.canOpenURL(mailURL) {
            UIApplication.shared.open(mailURL)
        }
    }
    
    private func openMessage() {
        let messageURLTmp = URL(string: "sms:")! // 권장하지 않는다. //표시를 해주는게 낫다
        let messageURL = URL(string: "sms://")!
        let messageURL2 = URL(string: "sms://010-0000-0000")! // 01000000000 is possible
        if UIApplication.shared.canOpenURL(messageURL) {
            UIApplication.shared.open(messageURL)
        }
    }
    
    private func openWebsite() {
        let websiteURL = URL(string: "https://www.google.com")!
        if UIApplication.shared.canOpenURL(websiteURL) {
            UIApplication.shared.open(websiteURL)
        }
    }
    
    private func openFacebook() {
        // 열리지 않음. canOpenURL - false. 화이트리스트 등록 필요
        let facebookScheme = URL(string: "fb://")!
//        UIApplication.shared.open(facebookScheme)
        if UIApplication.shared.canOpenURL(facebookScheme) {
            UIApplication.shared.open(facebookScheme)
        }
        print(UIApplication.shared.canOpenURL(facebookScheme))
    }
    
    open func openMyApp() {
        let myAppURL = URL(string: "myApp://?name=abc&age=10")!
        print(UIApplication.shared.canOpenURL(myAppURL))
        if UIApplication.shared.canOpenURL(myAppURL) {
            UIApplication.shared.open(myAppURL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

