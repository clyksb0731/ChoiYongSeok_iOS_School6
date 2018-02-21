//
//  ViewController.swift
//  TableView_Sample
//
//  Created by 최용석 on 2018. 2. 21..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tmpTV: UITableView = UITableView(frame: self.view.bounds, style: .grouped)
        tmpTV.dataSource = self
        tmpTV.delegate = self
        // ***** cell view from class subclass or UITableViewCell itself
        tmpTV.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tmpTV.register(MyTableViewCell.self, forCellReuseIdentifier: "myCell")
        // *****
        self.view.addSubview(tmpTV)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // indexPath contains the number of section and row
        // indexPath.section
        // indexPath.row
        
        // dequeueReusableCell: reuse method, which is used for memory efficiency

        if indexPath.section == 0 {
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
            cell.textLabel?.text = "section: \(indexPath.section), row: \(indexPath.row)"
            cell.accessoryType = .detailButton
            cell.backgroundColor = .blue
            return cell
        }
        else {
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "section: \(indexPath.section), row: \(indexPath.row)"
            cell.accessoryType = .disclosureIndicator
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print("numberOfSections")
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 60
        }
        else {
            return 44
        }
    }
}

