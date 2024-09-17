//
//  DetailsVC.swift
//  ArtBookProject
//
//  Created by Talha Coşkun on 26.12.2022.
//

import UIKit
import CoreData

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    @IBOutlet weak var İmageView: UIImageView!
    
    @IBOutlet weak var NameText: UITextField!
    
    @IBOutlet weak var ArtistText: UITextField!
    
    @IBOutlet weak var YearText: UITextField!
    
    @IBOutlet weak var SaveButton: UIButton!
    
    var chosenPainting = ""
    var chosenPaintingId :  UUID?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if chosenPainting != "" {
            
            SaveButton.isHidden = true
            
            //core Data
             
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
    
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
            let idString = chosenPaintingId?.uuidString
            fetchRequest.predicate = NSPredicate(format: "id = %@", idString!)
            fetchRequest.returnsObjectsAsFaults = false
            
            do{
                let results = try context.fetch(fetchRequest)
                
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        
                        if let name = result.value(forKey: "name") as? String{
                            NameText.text = name
                        }
                        
                        if let artist = result.value(forKey: "artist") as? String{
                            ArtistText.text = artist
                            
                        }
                        
                        if let year = result.value(forKey: "year") as? Int{
                            YearText.text = String(year)
                            
                        }
                        
                        if let imageData = result.value(forKey: "image") as? Data {
                            let image = UIImage (data: imageData)
                            İmageView.image = image
                        }
                        
                        
                    }
                    
                    
                }
                
            }catch{
                
            }
            
        } else {
            SaveButton.isHidden = false
            SaveButton.isEnabled = false
            NameText.text = ""
            ArtistText.text = ""
            YearText.text = ""
            
        }
        
        //recognizer

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        İmageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        İmageView.addGestureRecognizer(imageTapRecognizer)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func selectImage(){
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        İmageView.image = info[.originalImage] as? UIImage
        SaveButton.isEnabled = true

        self.dismiss(animated: true,completion: nil)
    }
    
    
    @objc func hideKeyboard(){
        
        view.endEditing(true)
    }
    

    @IBAction func SaveButtonClicked(_ sender: Any) {
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let NewPainting = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        
        //Attributes
        
        NewPainting.setValue(NameText.text!, forKey: "name")
        NewPainting.setValue(ArtistText.text, forKey: "artist")
        
        if let year = Int(YearText.text!) {
            
            NewPainting.setValue(year, forKey: "year")

            
        }
        
        NewPainting.setValue(UUID(), forKey: "id")
        
        let data = İmageView.image!.jpegData(compressionQuality: 0.5)
        
        NewPainting.setValue(data, forKey: "image")
        
        do{
            try context.save()
            print("success")
        } catch {
            print("error")
        }
        
      
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "newData"), object: nil)
        self.navigationController?.popViewController(animated: true  )
    }
    

}
