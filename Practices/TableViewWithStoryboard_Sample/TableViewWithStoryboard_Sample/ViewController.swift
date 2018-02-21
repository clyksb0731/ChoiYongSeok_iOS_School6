//
//  ViewController.swift
//  TableViewWithStoryboard_Sample
//
//  Created by 최용석 on 2018. 2. 21..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tmpTV: UITableView!
    
    var friendList: Array<String> = ["새로운 친구 1", "새로운 친구 2", "새로운 친구 3", "새로운 친구 4", "새로운 친구 5", "새로운 친구 6", "새로운 친구 7", "새로운 친구 8", "새로운 친구 9", "새로운 친구 10"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friendList[indexPath.row]
        return cell
    }
    
    // segue를 어떤 조건에서 시행 할 것인가 아니면 시행 하지 않을 것인가?
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    // segue를 사용하면서 무엇을 할지 셋팅 할 수 있다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

