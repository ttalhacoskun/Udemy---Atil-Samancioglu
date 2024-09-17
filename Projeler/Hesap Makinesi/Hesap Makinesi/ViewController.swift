//
//  ViewController.swift
//  Hesap Makinesi
//
//  Created by Talha Coşkun on 12.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstText: UITextField!
    @IBOutlet weak var SecondText: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    var result = 0.0
    //ASd
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SumClicked(_ sender: Any) {
        
        if let FirstNumber = Double(FirstText.text!) {
            if let SecondNumber = Double(SecondText.text!) {
                result = FirstNumber + SecondNumber
                ResultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func MinesClicked(_ sender: Any) {
        
        if let FirstNumber = Double(FirstText.text!) {
                  if let SecondNumber = Double(SecondText.text!) {
                      result = FirstNumber - SecondNumber
                      ResultLabel.text = String(result)
                  }
              }
    }
    
    @IBAction func MultiplyClicked(_ sender: Any) {
        
        if let FirstNumber = Double(FirstText.text!) {
            if let SecondNumber = Double(SecondText.text!) {
                result = FirstNumber * SecondNumber
                ResultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func DivideClicked(_ sender: Any) {
        
        if let FirstNumber = Double(FirstText.text!) {
                  if let SecondNumber = Double(SecondText.text!) {
                      result = FirstNumber / SecondNumber
                      ResultLabel.text = String(result)
                  }
              }
    }
}

