//
//  ViewController.swift
//  UIViewController_Test
//
//  Created by 최용석 on 2018. 2. 8..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
    }
    
    // UIAlertController ViewController 로 화면 전환하기 - alert에서 판단 할 수 있음
    @IBAction func testAction(_ sender: UIButton) {
        let nextVC = NextViewController(nibName: "NextViewController", bundle: nil)
        
        let alertVC = UIAlertController(title: "-Alert Name-", message: "-Message-", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "오케이", style: .default, handler: { (action) in
            self.present(nextVC, animated: true, completion: nil)
            print("============================================")
        })
        alertVC.addAction(action1)
        
        // 클로저가 맨 마지막 프로퍼티로 사용 시 괄호를 없애고도 쓸수 있다. 인수명도 같이 없애고 (스위프트에서 제공하는 문법)
        let action2 = UIAlertAction(title: "취소", style: .destructive) { (action) in
            // 취소시 해야될 행동
        }
        alertVC.addAction(action2)
        
        
        self.present(alertVC, animated: true, completion: nil)
        print("============================================")
    }
    
    @IBAction func newViewContollerByCode(_ sender: UIButton) {
        let next2: NextViewController = NextViewController()
        next2.view.backgroundColor = .green
        let tmpButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        tmpButton.setTitle("New VC Button", for: .normal)
        tmpButton.setTitleColor(.red, for: .normal)
        tmpButton.frame.origin = CGPoint(x: 100, y: 100)
        next2.view.addSubview(tmpButton)
        
        self.present(next2, animated: true, completion: nil)
    }
    
    @IBAction func newVC_StoryInitialization(_ sender: UIButton) {
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let tmpVC = stb.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        self.present(tmpVC, animated: true, completion: nil)
    }
    
    // 세그가 실행될 때 세그별로 조건별로 실행할지 정하는 함수
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "MainToNext":
            print("segue launched")
            // if 문을 통해 login 버튼 같은 것이 로그인 되기 위한 조건을 충족했는지 확인 후 Bool 값을 반환할 수 있다.
            return true
        default:
            print("")
            return false
        }
    }
    
    // 세그가 전환하려는 대상 viewController 별로 무엇을 해 줄지 정하는 것, sender는 세그의 트리거
    // segue.destination -> 전환 viewController인데 그 타입이 UIViewController 타입이다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? NextViewController {
            nextVC.title = self.title
        }
        if let another = segue.destination as? ViewController {
            another.title = "another"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidlayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

