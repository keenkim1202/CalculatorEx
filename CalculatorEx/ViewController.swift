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
  
  // MARK: prepare
  
  // MARK: Actions
  @IBAction func onPlus(_ sender: Any) {
  }
  
  @IBAction func onMinus(_ sender: Any) {
  }
  
  @IBAction func onMultiply(_ sender: Any) {
  }
  
  @IBAction func onDivide(_ sender: Any) {
  }
  
}

