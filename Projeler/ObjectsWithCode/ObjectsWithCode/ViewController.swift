//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Talha Coşkun on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        //das
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5, y: height * 0.5, width: 100, height: 100)
        myLabel.backgroundColor = .orange
        view.addSubview(myLabel)
        
        
        let myButton = UIButton()
        myButton.setTitle("Merhaba", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func myAction() {
        
        myLabel.text = "Tapped"
        
    }
    
}

