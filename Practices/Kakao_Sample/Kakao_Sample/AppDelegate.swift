//
//  AppDelegate.swift
//  Kakao_Sample
//
//  Created by 최용석 on 2018. 3. 29..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // 다른데서 바로 접근할 수 있도록... AppDelegate.instance.window와 같이..
    static var instance: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        if KOSession.isKakaoAgeAuthCallback(url) {
            return KOSession.handleOpen(url)
        }
        return false
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        initializeApp()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        KOSession.handleDidEnterBackground()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        KOSession.handleDidBecomeActive()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: - Initialize App
    
    private func initializeApp() {
        setupSessionChangeNotification()
        setupRootViewController()
    }
    
    private func setupSessionChangeNotification() {
        // KOSessionDidChange가 됐을 때 이 Notification이 작동한다.
        NotificationCenter.default.addObserver(forName: Notification.Name.KOSessionDidChange, object: nil, queue: .main) { [unowned self] noti in
            guard let session = noti.object as? KOSession else { return }
            session.isOpen() ? print("Login") : print("Logout")
            self.setupRootViewController()
            
        }
    }
    
    func setupRootViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 스토리보드의 처음 실행하는 view controller를 인스턴스화 한다.
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        
        if KOSession.shared().isOpen() {
            let mainVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            navigationController.viewControllers = [mainVC]
        }
        else {
            let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            navigationController.viewControllers = [loginVC]
        }
        window?.rootViewController = navigationController
    }


}

