//
//  ViewController.swift
//  Data_Plist_Sample
//
//  Created by 최용석 on 2018. 2. 27..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loadDataDic = loadPlistData(fileName: "Sample")
        print(loadDataDic["name"])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPlistData(fileName: String) -> Dictionary<String, String> {
        // 1. path
        if let path = Bundle.main.path(forResource: fileName, ofType: "plist") {
            // 2. data load
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let dic = try PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! Dictionary<String, String>
                
                return dic
            }
            catch {
                print("Error")
            }
            
        }
        return [:]
    }
    
    func loadPlistForDoc(fileName: String) -> Dictionary<String, String>? {
        let rootPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        let fullPath = rootPath + "/" + fileName + ".plist"
        
        if !FileManager.default.fileExists(atPath: fullPath) {
            // unless file exists
            if let bundlePath = Bundle.main.path(forResource: fileName, ofType: "plist") {
                try? FileManager.default.copyItem(atPath: bundlePath, toPath: fullPath)
            }
        }
        
        if let data = try? Data(contentsOf: URL(fileURLWithPath: fullPath)), var dic = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! Dictionary<String, String> {
            dic.updateValue("wing", forKey: "ID")
            
            let newData = try? PropertyListSerialization.data(fromPropertyList: dic, format: .xml, options: 0)
            try? newData?.write(to: URL(fileURLWithPath: fullPath))
        }
        
        return nil
    }


}

