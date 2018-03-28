//
//  CreatePostViewController.swift
//  API_Sample
//
//  Created by 최용석 on 2018. 3. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension CreatePostViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}
