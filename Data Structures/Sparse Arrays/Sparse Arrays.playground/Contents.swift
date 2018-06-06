import Foundation

// https://www.hackerrank.com/challenges/sparse-arrays/problem


func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var output = [Int]()
    for query in queries {
        var count = 0
        for value in strings {
            if query == value {
                count += 1
            }
        }
        output.append(count)
    }
    return output
}

