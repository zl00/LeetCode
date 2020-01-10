//: [Previous](@previous)

import Foundation

class NumArray {

    init(_ nums: [Int]) {
        self.nums = nums
        var sums = nums
        
        if sums.count == 0 {
            self.sums = sums
        } else {
            for i in 1..<nums.count {
                sums[i] += sums[i-1]
            }
            self.sums = sums
        }
    }
    
    func sumRangeEx(_ i: Int, _ j: Int) -> Int {
        guard i <= j, i >= 0, j < nums.count else { return -1 }
        
        if i == 0 {
            return sums[j]
        } else {
            return sums[j] - sums[i-1]
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        guard i <= j, i >= 0 else { return -1 }
        
        var result = 0
        
        for index in i..<min(j+1, nums.count) {
            result += nums[index]
        }
        
        return result
    }
    
    let nums: [Int]
    let sums: [Int]
}

//: [Next](@next)
