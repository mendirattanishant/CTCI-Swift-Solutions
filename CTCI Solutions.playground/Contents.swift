//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension String {
    func isUniqueCharacterString() -> Bool {
        var dictionary = [Character: Bool]()
        for c in self.characters {
            if let char = dictionary[c] {
                return false
            }
            dictionary[c] = true
        }
        
        return true
    }
    
    func isPermutation(_ secondString: String) -> Bool {
        if self.characters.count != secondString.characters.count {
            return false
        }
        
        if self.characters.sorted() != secondString.characters.sorted() {
            return false
        }
        
        
        return true
    }
}

print("hello".isUniqueCharacterString())
print("fox".isUniqueCharacterString())
print("aab".isUniqueCharacterString())

print("helo".isPermutation("helo"))
print("fox".isPermutation("xoff"))
print("aab".isPermutation("baa"))

