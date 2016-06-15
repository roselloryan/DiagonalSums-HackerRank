//
//  main.swift
//  Diagonals


import Foundation

let arr : [[Int]] = [[1, 2, 3],
                     [1, 1, 3,],
                     [2, 2, 1,]]

let n = arr[0].count

var primarySum = 0
var secondarySum = 0

// primary diagonal sum
for i in 0...n-1 {
    primarySum += arr[i][i]
}

//secondary diagonal sum
for i in 0...n-1 {
    secondarySum += arr[i][n - 1 - i]
}

// absolute diference between diagonal sums
var absoluteDiff = primarySum - secondarySum

if absoluteDiff < 0 {
    absoluteDiff *= -1
}

print(absoluteDiff)