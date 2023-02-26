//
//  ViewController.swift
//  MoneyExchangeEX
//
//  Created by hakulee on 2023/02/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var exchangeRateTextField: UITextField!
    @IBOutlet weak var wonTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    
    // 10의 3제곱, 소수점 자리수 3개로 제한한
    let squareOfTen: Double = pow(10, 3)
    
    // 숫자 외의 값이 들어왔을 때 경고창 띄우는 함수
    func warningMessage() {
        let alert = UIAlertController(title: "환산 불가", message: "숫자만 입력해 주세요", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "확인", style: .default)
        alert.addAction(confirm)
        present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // won에서 dollar로 변환 버튼
    @IBAction func wonToDollarButton(_ sender: Any) {
        if let won = Double(wonTextField.text!), let exchangeRate = Double(exchangeRateTextField.text!) {
            let result = won / exchangeRate
            dollarTextField.text = "\(round(result * squareOfTen) / squareOfTen)"
        } else {
            warningMessage()
        }
    }
    
    // dollar에서 won으로 변환 버튼
    @IBAction func dollarToWonButton(_ sender: Any) {
        if let won = Double(wonTextField.text!), let exchangeRate = Double(exchangeRateTextField.text!) {
            let result = exchangeRate / won
            wonTextField.text = "\(round(result * squareOfTen) / squareOfTen)"
        } else {
            warningMessage()
        }
    }
}
