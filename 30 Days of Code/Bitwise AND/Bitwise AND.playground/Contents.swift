import Foundation

/* Following link contain the problem statement.
*  https://www.hackerrank.com/challenges/30-bitwise-and/problem
*/

func findMaximumWithBitwiseAndOperator(n:Int, k: Int) -> Int {
    
    var maxNum = 0
    
    for i in 1..<n {
        
        for j in (i+1)...n {
            let result = i & j
            if result < k {
                maxNum = max(result, maxNum)
            }
        }
    }
    return maxNum
}

findMaximumWithBitwiseAndOperator(n: 5, k: 2)
findMaximumWithBitwiseAndOperator(n: 8, k: 5)
findMaximumWithBitwiseAndOperator(n: 2, k: 2)
findMaximumWithBitwiseAndOperator(n: 2, k: 3)

