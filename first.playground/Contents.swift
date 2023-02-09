import UIKit

var greeting = "Hello, playground"

var name = "ios"
print(name)

var num = 10
switch num{
case 10,15:
    print("num is 10 or 15")
    fallthrough
case 5:
    print("num is 5")
default:
    print("none")
    
    
}
