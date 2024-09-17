//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Talha Coşkun on 25.12.2022.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var İmageView: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var JobLabel: UILabel!
    
    
    var selectedSimpson : Simpson?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NameLabel.text = selectedSimpson?.name
        JobLabel.text = selectedSimpson?.job
        İmageView.image = selectedSimpson?.İmage
        
        
    }
    

    

}
