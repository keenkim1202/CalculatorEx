//
//  ResultViewController.swift
//  CalculatorEx
//
//  Created by KEEN on 2021/08/05.
//

import UIKit

class ResultViewController: UIViewController {
  
  // MARK: UI
  @IBOutlet var resultLabel: UILabel!
  @IBOutlet var retryButton: UIButton!
  
  // MARK: Properties
  var answer: String = ""
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    configure()
    resultLabel.text = answer
  }
  
  // MARK: Configure
  func configure() {
    view.backgroundColor = .systemYellow
    resultLabel.textColor = .white
    retryButton.tintColor = .red
  }
  
  // MARK: Action
  @IBAction func onRetry(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
}
