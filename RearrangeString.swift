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
