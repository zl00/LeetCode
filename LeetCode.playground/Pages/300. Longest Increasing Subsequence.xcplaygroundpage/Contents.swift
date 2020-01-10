//: [Previous](@previous)

import Foundation

/// [wiki](https://www.youtube.com/watch?v=fV-TF4OvZpk)
class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        let count = nums.count
        guard count > 0 else { return 0 }
        var result = 1
        var max = 1
        
        var curr = 1
        while curr < count {
            if nums[curr - 1] < nums[curr] {
                result += 1
                max = result > max ? result : max
            }
            
            curr += 1
        }
        
        return result
    }
}

let arr = [10,9,2,5,3,7,101,18]

[10,9,2,5,3,7,101,18]
2, 7, 9, 3, 4, 5, 6, 10

2, 7, 9, 10
2, 3, 4, 5, 6, 10


let solution = Solution()
solution.lengthOfLIS(arr)

//: [Next](@next)
