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
    
    // 10의 3제곱
    let squareOfTen: Double = pow(10, 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // won에서 dollar로 변환 버튼
    @IBAction func wonToDollarButton(_ sender: Any) {
        if let won = Double(wonTextField.text!), let exchangeRate = Double(exchangeRateTextField.text!) {
            let result = won / exchangeRate
            dollarTextField.text = "\(round(result * squareOfTen) / squareOfTen)"
        }
    }
    
    // dollar에서 won으로 변환 버튼
    @IBAction func dollarToWonButton(_ sender: Any) {
        if let won = Double(wonTextField.text!), let exchangeRate = Double(exchangeRateTextField.text!) {
            let result = exchangeRate / won
            wonTextField.text = "\(round(result * squareOfTen) / squareOfTen)"
        }
    }
}
