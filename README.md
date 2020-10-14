# RearrangeString


Given a string str consisting of letters only and an integer n, the task is to replace every character of the given string by a character which is n times more than it. If the letter exceeds ‘z’, then start checking from ‘a’ in a cyclic manner.

Examples:<br/>

Input: str = “abc”, n = 2<br/>
Output: cde<br/>
a is moved by 2 times which results in character c<br/>
b is moved by 2 times which results in character d<br/>
c is moved by 2 times which results in character e<br/>

Input: str = “abc”, n= 28<br/>
Output: cde<br/>
a is moved 25 times, z is reached. Then the 26th character will be a, 27th b and 28th c<br/>
b is moved 24 times, z is reached. 28-th is d<br/>
c is moved 23 times, z is reached. 28-th is e<br/>

For test:
```swift
var oldStr = "abc"
var n = 2
var n2 = 28
let rearrange = RearrangeString()
print(rearrange.encode(str: oldStr, n: n))
print(rearrange.encode(str: oldStr, n: n2))
```

Class for problem solve: 
```swift
import Foundation
    
extension Character {
    // char position at alphabets
    func charPositionAtAlphabets() -> Int{
       guard let strAscii = self.asciiValue else {
           return 0
       }
       let position = strAscii - ((Character("a").asciiValue ?? 97) - 1)
       return Int(position)
   }
}

class RearrangeString {

    let maxCharacterIndex = 26
    let defualtFirstCharacterAsccii : UInt8 = Character("a").asciiValue ?? 97
    
    // Function to move string character
     func encode(str : String , n : Int) -> String {
        var newStr = ""
        var charr : Character = "a"
        
        for char in str.enumerated() {
            let position =  char.element.charPositionAtAlphabets()
            
            var dup = n
            
            // if n-th ahead character exceed 'z'
            if position + dup > maxCharacterIndex {
                dup -= (maxCharacterIndex - position)
                dup = dup % maxCharacterIndex
                charr = Character(UnicodeScalar(Int(((defualtFirstCharacterAsccii) - 1)) + dup)!)
            }else{
                charr = Character(UnicodeScalar(Int(char.element.asciiValue ?? defualtFirstCharacterAsccii) + dup)!)
            }
            newStr = "\(newStr)\(charr)"
        }
        
        return newStr
    }
    
}
```
