//
//  ViewController.swift
//  Gesture_Sample
//
//  Created by 최용석 on 2018. 3. 6..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet var tapCountLb: UILabel!
    @IBOutlet var tapPointLb: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        let points = "\(touch.location(in: touch.view).x), \(touch.location(in: touch.view).y)"
        let tapCount = touch.tapCount
        
        tapCountLb.text = "\(tapCount)"
        tapPointLb.text = points
        return true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

