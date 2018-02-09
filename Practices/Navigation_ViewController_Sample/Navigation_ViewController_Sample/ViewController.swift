//
//  ViewController.swift
//  Navigation_ViewController_Sample
//
//  Created by 최용석 on 2018. 2. 9..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 클로저 써서 초기화 하기
    // segue 써서 네이게이터 이동해 보기
    let nextVC1: UIViewController = {
        let stbd = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = stbd.instantiateViewController(withIdentifier: "NextViewController")
        return nextVC
    }()
    
    // 인스턴스로부터 메소드를 통해 직접 인스턴스 받아서 초기화하기
    let nextVC2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController")
    
    @IBAction func goNextByCode(_ sender: UIButton) {
        self.navigationController?.pushViewController(nextVC2, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // navigation item의 타이틀을 바꿀 때는 navigation에 속한 각각의 viewController에서 설정한다.
        // 다른 navition 구성도 마찬가지
        self.navigationItem.title = "네이게이터"
        self.title = "바뀐 네이게이터" // 이렇게도 쓸 수 있다.
        
        // left
        let leftItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.camera, target: self, action: #selector(leftAction(_:)))
        // tint color는 addSubview 된 view들에 영향을 준다.
        // tint color는 전체적인 컬러 톤으로 이해하면 된다.
//        leftItem.tintColor = UIColor.red
        
        
        // title
        self.navigationItem.title = "메인 페이지"
        
        // right
        let rightItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.edit, target: self, action: #selector(rightAction(_:)))
        
        self.navigationItem.leftBarButtonItem = leftItem
        self.navigationItem.rightBarButtonItem = rightItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @objc func leftAction(_ sender: UIBarButtonItem) {
        
    }
    
    @objc func rightAction(_ sender: UIBarButtonItem) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

