//
//  NextViewController.swift
//  ViewController_Summary
//
//  Created by 최용석 on 2018. 3. 7..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBAction func goBackAction(_ sender: UIButton) {
        print("--------------------------------------")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionFunc(_ segue: UIStoryboardSegue) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Next_viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Next_viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Next_viewDidAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("Next_viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("Next_viewDidLayoutsubviews")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Next_viewWilldisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Next_viewDidDisappear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
