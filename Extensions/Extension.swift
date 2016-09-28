//
//  Extension.swift
//  Extensions
//
//  Created by Benjamin Su on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
let vowels = ["a","e","i","o","u","y"]


extension String {
    
    var unicornLevel: String {
        var tempString = ""
        for char in self.characters {
            if char != " " {
                tempString += "🦄"
            }
        }
        return tempString
    }
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
    var pigLatin: String {
        if self.characters.count > 1 {
            var words: [String] = []
            var tempString = ""
            for char in self.lowercased().characters {
                if char != " " {
                    tempString.append(String(char))
                } else {
                    words.append(tempString)
                    tempString.removeAll()
                }
            }
            words.append(tempString)
            tempString = ""
            var piggedWords: [String] = []
            for word in words {
                var tempWord = ""
                var endOfWord = ""
                for (index, char) in word.characters.enumerated() {
                    if index == 0 {
                        endOfWord += "\(char)ay"
                    } else if index == 1 {
                        tempWord += String(char).uppercased()
                    } else {
                        tempWord += String(char)
                    }
                    if index == word.characters.count - 1 {
                        tempWord += endOfWord
                    }
                }
                piggedWords.append(tempWord)
            }
            for (index, word) in piggedWords.enumerated() {
                if index != piggedWords.count - 1 {
                    tempString += "\(word) "
                } else {
                    tempString += "\(word)"
                }
            }
            
            return tempString
        } else {
            return self.uppercased()
        }
    }
    
    var points: Int {
        var score = 0
        for char in self.lowercased().characters {
            if consonants.contains(String(char)) {
                score += 1
            } else if vowels.contains(String(char)) {
                score += 2
            }
        }
        return score
    }
}

extension Int {
    
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by num: Int) -> Bool{
        return self % num == 0 ? true : false
    }
    
    var squared: Int { return self*self }
    
    var halved: Int { return self/2}
}








































