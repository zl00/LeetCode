//: [Previous](@previous)

import Foundation

/*
 nums: [-2,1,-3,4,-1,2,1,-5,4],
 sums: [-2,1,-2,4,3,5,6,1,5]
 Explanation: [4,-1,2,1] has the largest sum = 6.
*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return nums.first ?? -1 }
        
        var res = nums[0]
        var sum = nums[0]
        
        for i in 1..<nums.count {
            print(">>>\(i)")
            sum = max(nums[i] + sum, nums[i])
            res = max(res, sum)
            print(sum)
        }
        return res
    }
}

let s = Solution()
s.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])

//: [Next](@next)
