//: [Previous](@previous)

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        switch n {
        case _ where n <= 0:
            return 0
            
        case 1:
            return 1
            
        case 2:
            return 2
            
        default:
            var results = [Int](repeating: 0, count: n)
            results[0] = 1
            results[1] = 2
            
            for index in 2..<n {
                results[index] = results[index-1] + results[index-2]
            }
            return results[n-1]
        }
    }
    
    /// 优化空间
    func climbStairsEx(_ n: Int) -> Int {
        switch n {
        case _ where n <= 0:
            return 0
            
        case 1:
            return 1
            
        case 2:
            return 2
            
        default:
            var one = 1, two = 2
            var tmp = 0
            for index in 2..<n {
                tmp = one + two
                one = two
                two = tmp
            }
            return two
        }
    }
}

let solution = Solution()
print(solution.climbStairs(5))

//: [Next](@303.RangeSum)
