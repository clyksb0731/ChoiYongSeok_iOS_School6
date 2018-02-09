//
//  NextViewController.swift
//  Navigation_ViewController_Sample
//
//  Created by 최용석 on 2018. 2. 9..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBAction func goBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationItem.title = "네이게이터"
        self.title = "2 번째 네이게이터" // 이렇게도 쓸 수 있다.
        
        let img: UIImage = UIImage(named: "apple_logo")!
        let icon: UIImageView = UIImageView(image: img)
        icon.frame.size = CGSize(width: 20, height: 20)
        // autolayout 관점에서 frame이 적용되지 않기 때문에 이렇게 이미지를 줄여줘야 정상 적용 된다.
        icon.widthAnchor.constraint(equalToConstant: 32).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 32).isActive = true
        // 이 icon은 보통의 UIView이므로 action을 넣고 싶으면 UIButton으로 만들어서 넣는다.
        let leftButtonItem1: UIBarButtonItem = UIBarButtonItem(customView: icon)
        
        // autolayout issue로 그림 원래 크기의 틀 적용되는 것 같음
        // 그 틀도 바꾸는 방법 있으면 적용해야함
        // let leftButtonItem2: UIBarButtonItem = UIBarButtonItem(image: img, style: .done, target: self, action: #selector(goBackByNavigationItem(_:)))
        self.navigationItem.leftBarButtonItem = leftButtonItem1
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @objc func goBackByNavigationItem(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
