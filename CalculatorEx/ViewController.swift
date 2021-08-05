//
//  ViewController.swift
//  CalculatorEx
//
//  Created by KEEN on 2021/08/05.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: Enum
  enum Operator {
    case plus
    case minus
    case multiply
    case divide
  }
  
  // MARK: UI
  @IBOutlet var leftTextField: UITextField!
  @IBOutlet var rightTextField: UITextField!
  
  @IBOutlet var plusButton: UIButton!
  @IBOutlet var minusButton: UIButton!
  @IBOutlet var multiplyButton: UIButton!
  @IBOutlet var divideButton: UIButton!
  
  // MARK: Properties
  var result: String = ""
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configure()
  }
  
  // MARK: Configure
  func configure() {
    view.backgroundColor = .systemGreen
    [plusButton, minusButton, multiplyButton, divideButton].forEach { button in
      button?.tintColor = .white
      button?.backgroundColor = .systemBlue
      button?.layer.cornerRadius = CGFloat(8)
    }
  }
  
  func calculator(_ num1: String, _ num2: String, _ op: Operator) {
    guard let resultVC = storyboard?.instantiateViewController(identifier: "resultVC") as? ResultViewController else { return }

    guard let num1 = Double(num1),
          let num2 = Double(num2) else {
      resultVC.answer = "올비르지 않은 입력"
      self.present(resultVC, animated: true, completion: nil)
      return
    }
    
    switch op {
    case .plus:
      resultVC.answer = String(num1 + num2)
    case .minus:
      resultVC.answer = String(num1 - num2)
    case .multiply:
      resultVC.answer = String(num1 * num2)
    case .divide:
      resultVC.answer = String(num1 / num2)
    }
    self.present(resultVC, animated: true, completion: nil)
  }
  
  // MARK: Actions
  @IBAction func onPlus(_ sender: Any) {
    guard let num1: String = leftTextField.text,
          let num2: String = rightTextField.text else { return }
    calculator(num1, num2, .plus)
  }
  
  @IBAction func onMinus(_ sender: Any) {
    guard let num1: String = leftTextField.text,
          let num2: String = rightTextField.text else { return }
    calculator(num1, num2, .minus)
  }
  
  @IBAction func onMultiply(_ sender: Any) {
    guard let num1: String = leftTextField.text,
          let num2: String = rightTextField.text else { return }
    calculator(num1, num2, .multiply)
  }
  
  @IBAction func onDivide(_ sender: Any) {
    guard let num1: String = leftTextField.text,
          let num2: String = rightTextField.text else { return }
    calculator(num1, num2, .divide)
  }
}

