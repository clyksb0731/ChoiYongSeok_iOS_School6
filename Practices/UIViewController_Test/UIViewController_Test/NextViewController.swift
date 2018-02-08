//
//  NextViewController.swift
//  UIViewController_Test
//
//  Created by 최용석 on 2018. 2. 8..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("NextloadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NextviewDidLoad")
        
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        print("************************************")
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("NextviewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("NextviewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("NextviewDidlayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("NextViewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("NextviewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("NextviewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("Next is removed")
    }
}
