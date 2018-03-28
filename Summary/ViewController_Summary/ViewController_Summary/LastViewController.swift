//
//  LastViewController.swift
//  ViewController_Summary
//
//  Created by 최용석 on 2018. 3. 28..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {
    
    @IBOutlet weak var goToSecBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Last_viewDidLoad")
        
        goToSecBtn.addTarget(self, action: #selector(goToSecVCAction(_:)), for: .touchUpInside)
    }
    
    @objc func goToSecVCAction(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tmp(_ sender: UIButton) {
        print("Two actions have been performed")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Last_viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("Last_viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("Last_viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Last_viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Last_viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Last_viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
