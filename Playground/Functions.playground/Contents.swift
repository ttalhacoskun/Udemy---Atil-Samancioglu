import UIKit

func myFunction(){
    
    print("My Function")
    
}

myFunction()


// İnput & Output & Return

func sumFunction(x: Int, y: Int) -> Int{
    
   return x + y
    
}

let myFunctionVariable = sumFunction(x: 10, y: 20)
print(myFunctionVariable)


func logicFunction(a: Int, b: Int) -> String {
    
    if a > b {
        return "deneme"
    } else {
        return "denenedme"
    }
    
}
logicFunction(a: -10, b: 20)
