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
  
  // MARK: Properties
  var answer: String = ""
  
  // MARK: View Life-Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // MARK: Action
  @IBAction func onRetry(_ sender: Any) {
  }
  
}
