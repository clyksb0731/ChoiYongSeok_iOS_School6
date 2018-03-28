//
//  PostListViewController.swift
//  API_Sample
//
//  Created by 최용석 on 2018. 3. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class PostListViewController: UIViewController {
    
    @IBOutlet weak var postList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // postList.delegate = self due to done connection already
        // postList.dataSource = self due to done connection already
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    @IBAction func goBackToLogin(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}

extension PostListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // temp
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // temp
    }
    
    
}
