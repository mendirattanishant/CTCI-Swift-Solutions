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
}

print("hello".isUniqueCharacterString())
print("fox".isUniqueCharacterString())
print("aab".isUniqueCharacterString())