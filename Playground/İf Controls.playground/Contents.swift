import UIKit

var myAge = 90

// <, >, ==, !=
// And &&
// Or ||

if myAge < 30 {
    
    print("30 -")
    
}else if myAge > 30 && myAge < 40 {
    
    print("30 s")
    
}else if myAge > 40 && myAge < 50{
    
    print("40 +")
    
}else {
    
    print("50 +")
    
}

// And
3 < 5 && 5 < 7

// Or
3 < 5 || 8 < 7

var myString = "James"

if myString == "james" {
    
    print("yes")
}else {
    
    print("no")
    
}
