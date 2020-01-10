//: [Previous](@previous)

import Foundation

/// [wiki](https://www.youtube.com/watch?v=-i2BFAU25Zk)
class Solution {
    func rob(_ nums: [Int]) -> Int {
        let count = nums.count
        guard count > 0 else { return 0 }
        
        var r = nums[0]
        var nr = 0
        
        var i = 1
        while i < count {
            let tmp_r = nr + nums[i]
            let tmp_nr = nr > r ? nr : r
            r = tmp_r
            nr = tmp_nr
            
            i += 1
        }
        return r > nr ? r : nr
    }
}

let s = Solution()
s.rob([2,7,9,3,1])

//: [Next](@next)
