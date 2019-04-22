//
//  ViewController.swift
//  TableView_Sample
//
//  Created by 최용석 on 2018. 2. 21..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var friendList: Array<String> = ["강국자 권사님","강성우 매니저님", "강영미", "강희영 형", "고석산", "길지선", "김동성", "김민태 형", "김시진", "김영민", "김준우 형", "김철호", "류지혁 형", "박용진", "쁨이 아버님"]
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addList(_:)))
        self.navigationItem.title = "리스트"
        
        // transmission succeeded from any outside thing
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.separatorStyle = .none
        
        self.view.addSubview(self.tableView)

    }
    
    override func viewWillAppear(_ animated: Bool) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func addList(_ sender: UIButton) {
        self.friendList.append(contentsOf: ["강국자 권사님","강성우 매니저님", "강영미", "강희영 형", "고석산", "길지선", "김동성", "김민태 형", "김시진", "김영민", "김준우 형", "김철호", "류지혁 형", "박용진", "쁨이 아버님"])
        
        self.tableView.reloadData()
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.friendList[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let title = tableView.cellForRow(at: indexPath)?.textLabel?.text {
            let nextVC: NextViewController = NextViewController()
            nextVC.setLabelText(title: title)
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}

