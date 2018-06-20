import Foundation

// Complete the arrayManipulation function below.
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var arr = [Int](repeating: 0, count: n)
    
    for q in queries {
        let startIndex = q[0] - 1
        let endIndex = q[1] - 1
        let value = q[2]
        
        for index in startIndex...endIndex {
            arr[index] += value
        }
    }
    
    return arr.max()!
}

arrayManipulation(n: 10, queries: [[1,2,100], [2,5,100], [3, 4, 100]])
