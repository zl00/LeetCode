//: [Previous](@previous)

import Foundation

/// [wiki](https://www.youtube.com/watch?v=pYKGRZwbuzs&t=536s)

class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let count = s.count
        let dictSet = Set<String>(wordDict)
        var breakables = [Bool](repeating: true, count: count + 1)
        
        var i = 1, j = 0
        while i <= count {
            j = 1
            
            let endIndex = s.index(s.startIndex, offsetBy: i)
            
            while j <= i {
                let startIndex = s.index(s.startIndex, offsetBy: j-1)
                
                let subString = String(s[startIndex..<endIndex])
                if dictSet.contains(subString) && breakables[j-1] {
                    breakables[i] = true
                    break
                }
                
                j += 1
            }
            
            if j > i {
                breakables[i] = false
            }
            
            i += 1
        }
        
        return breakables[count]
    }
}

let s = "catsandog"
let wordDict = ["cats", "dog", "sand", "and", "cat"]

let solution = Solution()
solution.wordBreak(s, wordDict)


//: [Next](@next)
