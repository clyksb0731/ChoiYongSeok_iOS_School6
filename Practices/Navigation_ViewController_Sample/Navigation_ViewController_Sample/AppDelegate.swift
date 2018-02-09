//
//  AppDelegate.swift
//  Navigation_ViewController_Sample
//
//  Created by 최용석 on 2018. 2. 9..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
//        // 1. VC 인스턴스 만들기
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let mainVC: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        
//        // Navigation ViewController 생성 (root view controller)를 mainVC로 지정
//        let NaviVC: UINavigationController = UINavigationController(rootViewController: mainVC)
//        
//        // 화면에 띄어주기만 할 때는 굳이 다운 캐스팅을 할 필요는 없다.
//        // 다운 캐스팅을 해서 ViewController로서 무엇을 할 때만 다운 캐스팅을 해도 된다.
//        // 즉 roootViewController에 넘겨줄 때는 UIViewController로 넘겨도 된다.
//        // let mainVC = storyboard.instantiateViewController(withIdentifier: "ViewController")
//        
//        // 2. Windows 인스턴스 만들기
//        window = UIWindow(frame: UIScreen.main.bounds)
//        
//        // 3. Windows 인스턴스 만들기
//        window?.rootViewController = NaviVC
//        window?.makeKeyAndVisible()
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

