//
//  ViewController.swift
//  Vending_Machine
//
//  Created by 최용석 on 2018. 2. 7..
//  Copyright © 2018년 Yongseok Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pdImgNPrice: [[String:Int]] = [["coke":1000], ["sprite":800], ["coffee":1500], ["water":500]] // 상품의 이름과 가격
    var drinkItemList: [DrinkItem]?
    var statementLabel: UILabel?
    var moneyLabel: UILabel?
    var insertMoneyBtn1: UIButton?
    var insertMoneyBtn2: UIButton?
    var returnBtn: UIButton?
    
    var moneyInVM: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDrinkItem(number: 4) // 드링크 아이템 생성
        createStateLabels()  // 상태 정보 라벨 생성
        createButtons() // 버튼 생성
        arrangeView(viewList: drinkItemList, number: 2, width: 160, height: 210) // view layout 셋팅
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 드링크 아이템 생성
    func createDrinkItem(number num: Int){
        drinkItemList = []
        
        for index in 0..<num {
            for (named, price) in pdImgNPrice[index % 4] {
                let tmpView = DrinkItem()
                tmpView.createView(named: named, price: price)
                tmpView.addTarget(self, action: #selector(withdrawMoney(_:)), for: .touchUpInside)
                drinkItemList!.append(tmpView)
            }
        }
    }
    
    // 상태 정보 라벨 생성
    func createStateLabels() {
        statementLabel = UILabel()
        statementLabel!.font = UIFont.systemFont(ofSize: 20)
        statementLabel!.textColor = .white
        statementLabel!.textAlignment = .right
        statementLabel!.text = "결과 Text"
        
        moneyLabel = UILabel()
        moneyLabel!.font = UIFont.systemFont(ofSize: 20)
        moneyLabel!.textColor = .white
        moneyLabel!.textAlignment = .right
        moneyLabel!.text = "잔액 : \(moneyInVM)원"
    }
    
    // 버튼 생성
    func createButtons() {
        insertMoneyBtn1 = UIButton()
        insertMoneyBtn1!.setTitle("1000원", for: .normal)
        insertMoneyBtn1!.setTitleColor(.black, for: .normal)
        insertMoneyBtn1!.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        insertMoneyBtn1!.layer.borderWidth = 2
        insertMoneyBtn1!.layer.borderColor = UIColor.gray.cgColor
        insertMoneyBtn1!.layer.cornerRadius = 10
        insertMoneyBtn1!.tag = 1000
        insertMoneyBtn1!.addTarget(self, action: #selector(insertMoney(_:)), for: .touchUpInside)
        
        insertMoneyBtn2 = UIButton()
        insertMoneyBtn2!.setTitle("500원", for: .normal)
        insertMoneyBtn2!.setTitleColor(.black, for: .normal)
        insertMoneyBtn2!.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        insertMoneyBtn2!.layer.borderWidth = 2
        insertMoneyBtn2!.layer.borderColor = UIColor.gray.cgColor
        insertMoneyBtn2!.layer.cornerRadius = 10
        insertMoneyBtn2!.tag = 500
        insertMoneyBtn2!.addTarget(self, action: #selector(insertMoney(_:)), for: .touchUpInside)
        
        returnBtn = UIButton()
        returnBtn!.setTitle("반환", for: .normal)
        returnBtn!.setTitleColor(.black, for: .normal)
        returnBtn!.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        returnBtn!.layer.borderWidth = 2
        returnBtn!.layer.borderColor = UIColor.gray.cgColor
        returnBtn!.layer.cornerRadius = 10
        returnBtn!.tag = 0
        returnBtn!.addTarget(self, action: #selector(withdrawMoney(_:)), for: .touchUpInside)
    }
    
    // view layout 셋팅
    func arrangeView(viewList: [DrinkItem]?, number num: Int, width: CGFloat, height: CGFloat) {
        guard let viewList = viewList, viewList.isEmpty == false, let statementLabel = statementLabel, let moneyLabel = moneyLabel, let insertMoneyBtn1 = insertMoneyBtn1, let insertMoneyBtn2 = insertMoneyBtn2, let returnBtn = returnBtn else { return }
        
        var offSetY: CGFloat = 0
        let rootWidth: CGFloat = self.view.bounds.size.width
        let rootHeight: CGFloat = self.view.bounds.size.height
        
        let basicFrame: UIView = UIView(frame: CGRect(x: 25, y: 20, width: rootWidth - 50, height: rootHeight - 40))
        self.view.addSubview(basicFrame)
        
        // 상품들 나열
        let productsFrame: UIView = UIView(frame: CGRect(x: 0, y: 0, width: basicFrame.bounds.size.width, height: basicFrame.bounds.size.height * 0.7))
        basicFrame.addSubview(productsFrame)
        
        for index in 0..<viewList.count {
            let row: Int = index / num
            let col: Int = index % num
            // 일정한 비율의 간격을 줌
            let xMargin: CGFloat = (productsFrame.bounds.size.width - (width * CGFloat(num))) / CGFloat(num - 1)
            
            viewList[index].frame = CGRect(x: (xMargin + width) * CGFloat(col), y: (10 + height) * CGFloat(row), width: width, height: height)
            viewList[index].layoutViews()
            productsFrame.addSubview(viewList[index])
        }
        
        offSetY += productsFrame.bounds.size.height
        
        // 상태 정보 라벨 나열
        let labelFrame: UIView = UIView(frame: CGRect(x: 0, y: offSetY, width: basicFrame.bounds.size.width, height: basicFrame.bounds.size.height * 0.15))
        labelFrame.backgroundColor = .black
        basicFrame.addSubview(labelFrame)
        
        statementLabel.frame = CGRect(x: labelFrame.bounds.size.width * 0.1, y: 0, width: labelFrame.bounds.size.width * 0.8, height: labelFrame.bounds.size.height / 2)
        labelFrame.addSubview(statementLabel)
        moneyLabel.frame = CGRect(x: labelFrame.bounds.size.width * 0.1, y: labelFrame.bounds.size.height / 2, width: labelFrame.bounds.size.width * 0.8, height: labelFrame.bounds.size.height / 2)
        labelFrame.addSubview(moneyLabel)
        
        offSetY += labelFrame.bounds.size.height
        
        // 버튼 나열
        let buttonFrame: UIView = UIView(frame: CGRect(x: 0, y: offSetY, width: basicFrame.bounds.size.width, height: basicFrame.bounds.size.height * 0.15))
        basicFrame.addSubview(buttonFrame)
        
        insertMoneyBtn1.frame = CGRect(x: 0, y: buttonFrame.bounds.size.height * 0.2, width: buttonFrame.bounds.size.width * 0.3, height: buttonFrame.bounds.size.height * 0.6)
        buttonFrame.addSubview(insertMoneyBtn1)
        insertMoneyBtn2.frame = CGRect(x: insertMoneyBtn1.bounds.size.width + buttonFrame.bounds.size.width * 0.1, y: buttonFrame.bounds.size.height * 0.2, width: buttonFrame.bounds.size.width * 0.25, height: buttonFrame.bounds.size.height * 0.6)
        buttonFrame.addSubview(insertMoneyBtn2)
        returnBtn.frame = CGRect(x: insertMoneyBtn1.bounds.size.width + insertMoneyBtn2.bounds.size.width + buttonFrame.bounds.size.width * 0.2, y: buttonFrame.bounds.size.height * 0.2, width: buttonFrame.bounds.size.width * 0.25, height: buttonFrame.bounds.size.height * 0.6)
        buttonFrame.addSubview(returnBtn)
    }
    
    // 입금 이벤트
    @objc func insertMoney(_ sender: UIButton) {
        guard let statementLabel = statementLabel, let moneyLabel = moneyLabel else { return }
        
        plusMoney(with: sender.tag)
        
        statementLabel.text = "\(sender.tag)원이 입금되었습니다."
        moneyLabel.text = "잔액 : \(moneyInVM)원"
    }
    
    // 출금 이벤트 (반환까지 됨)
    @objc func withdrawMoney(_ sender: UIButton) {
        guard let statementLabel = statementLabel, let moneyLabel = moneyLabel, let product = sender.titleLabel?.text else { return }
        
        if moneyInVM < sender.tag {  // 예외상황 - 잔액이 부족할 때 구매를 시도하면, 잔액 부족 알림
            statementLabel.text = "잔액이 부족합니다."
            return
        }
        else if moneyInVM == 0 && sender.tag == 0 {  // 예외상황 - 잔액이 없을 때 반환하려하면, 금액이 없다고 알림
            statementLabel.text = "반환될 금액이 없습니다."
            return
        }
        
        minusMoney(with: sender.tag)
        
        switch product {
        case "coke":
            statementLabel.text = "콜라가 나왔습니다."
            moneyLabel.text = "잔액 : \(moneyInVM)원"
        case "sprite":
            statementLabel.text = "사이다가 나왔습니다."
            moneyLabel.text = "잔액 : \(moneyInVM)원"
        case "coffee":
            statementLabel.text = "커피가 나왔습니다."
            moneyLabel.text = "잔액 : \(moneyInVM)원"
        case "water":
            statementLabel.text = "물이 나왔습니다."
            moneyLabel.text = "잔액 : \(moneyInVM)원"
        default:
            statementLabel.text = "\(moneyInVM)원이 반환 되었습니다."
            moneyInVM = 0
            moneyLabel.text = "잔액 : \(moneyInVM)원"
        }
    }
    
    // 출금 계산
    func minusMoney(with: Int) {
        if moneyInVM - with >= 0 {
            moneyInVM -= with
        }
    }
    
    // 입금 계산
    func plusMoney(with: Int) {
        moneyInVM += with
    }


}











