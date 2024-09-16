import UIKit

var myName : String?

myName?.uppercased()

// Optionals : ? vs !

var myAge = "6"

var myInteger = (Int(myAge) ?? 0) * 5

if let myNumber = Int(myAge) {
    
    print(myNumber * 5)
    
}else {
    
    print("wrong input")
    
}
