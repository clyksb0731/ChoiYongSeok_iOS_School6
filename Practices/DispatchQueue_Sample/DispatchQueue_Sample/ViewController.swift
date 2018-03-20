//
//  ViewController.swift
//  DispatchQueue_Sample
//
//  Created by 최용석 on 2018. 3. 20..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        bigTaskOnMainThread()
        uiTaskOnBackgroundThread()
    }
    
    private func bigTaskOnMainThread() {
        print("big task start")
        for _ in 0...900_000_000 {
            _ = 1 + 1
        }
        print("big task end. start UI task")
        view.backgroundColor = .magenta
    }
    
    // 잘못된 사용, ui는 main queue로 사용해야..
    private func uiTaskOnBackgroundThread() {
        DispatchQueue.global().async {
            [weak self] in
            // 이렇게 해주면 global queue를 사용하면서 ui를 DispatchQueue에서 사용할 수 있다.
            DispatchQueue.main.async {
                self?.view.backgroundColor = .magenta
            }
//            self?.view.backgroundColor = .magenta
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

