//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Talha Coşkun on 25.12.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var TableView: UITableView!
    
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.delegate = self
        TableView.dataSource = self
        
        
        //Simpson Object
        
        let homer = Simpson(name: "Homer Simpson", job: "Vergi Memuru", İmage: UIImage(named: "Homer")!)
        let marge = Simpson(name: "Marge Simpson", job: "Ev Hanımı", İmage: UIImage(named: "Marge")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", İmage: UIImage(named: "Bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", İmage: UIImage(named: "Lisa")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", İmage: UIImage(named: "Maggie")!)
        
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson        }
    }
    
    
}




