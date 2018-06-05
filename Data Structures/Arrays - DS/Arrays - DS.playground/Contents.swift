import Foundation

//https://www.hackerrank.com/challenges/arrays-ds/problem

// In this problem we have to reverse input array. We can used library method but I prefer to write my own solution.

func reverseArray(a: [Int]) -> [Int] {
    if a.count == 0 || a.count == 1 {
        return a
    }
    
    var array = a
    
    var startIndex = 0
    var endIndex = a.count - 1
    
    while startIndex <= endIndex {
        
        let temp = array[startIndex]
        array[startIndex] = array[endIndex]
        array[endIndex] = temp
        startIndex += 1
        endIndex -= 1
        
    }
    return array
}

reverseArray(a: [1,2,3])
reverseArray(a: [1])
reverseArray(a: [1,2])
