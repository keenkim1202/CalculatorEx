//
//  ViewController.swift
//  CalculatorEx
//
//  Created by KEEN on 2021/08/05.
//

import UIKit

class ViewController: UIViewController {
  
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
  
  func convertToNumber(_ num1: String, _ num2: String) -> (Double, Double) {
    var nums: (lhs: Double, rhs: Double) = (0,0)
    
    if Double(num1) != nil && Double(num2) != nil {
      nums.lhs = Double(num1)!
      nums.rhs = Double(num2)!
    }
    return nums
  }
  
  // MARK: prepare
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let resultVC = segue.destination as? ResultViewController else { return }

    switch segue.identifier {
    case "showResult":
      resultVC.answer = result
      default:
        print("no match identifier")
        return
    }
  }
    
  
  // MARK: Actions
  @IBAction func onPlus(_ sender: Any) {
    guard let num1 = leftTextField.text, let num2 = rightTextField.text else { return }
    let nums = convertToNumber(num1, num2)
    result = "\(nums.0 + nums.1)"
    performSegue(withIdentifier: "showResult", sender: nil)

  }
  
  @IBAction func onMinus(_ sender: Any) {
    guard let num1 = leftTextField.text, let num2 = rightTextField.text else { return }
    let nums = convertToNumber(num1, num2)
    result = "\(nums.0 + nums.1)"
    performSegue(withIdentifier: "showResult", sender: nil)

  }
  
  @IBAction func onMultiply(_ sender: Any) {
    guard let num1 = leftTextField.text, let num2 = rightTextField.text else { return }
    let nums = convertToNumber(num1, num2)
    result = "\(nums.0 + nums.1)"
    performSegue(withIdentifier: "showResult", sender: nil)

  }
  
  @IBAction func onDivide(_ sender: Any) {
    guard let num1 = leftTextField.text, let num2 = rightTextField.text else { return }
    let nums = convertToNumber(num1, num2)
    result = "\(nums.0 + nums.1)"
    performSegue(withIdentifier: "showResult", sender: nil)

  }
  
}

