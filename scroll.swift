import UIKit

var array = [1, 2, 3, 4, 5, 6, 7, 8]

func rotate(_ array: inout [Int]) {
    let placeHolder = array[array.count-1]
    for i in 0...array.count-1 {
        let arrayDecendingCount = array.count - 1 - i
        if arrayDecendingCount != 0 {
            array[arrayDecendingCount] = array[arrayDecendingCount-1]
        } else {
            array[arrayDecendingCount] = placeHolder
        }
    }
}

rotate(&array) 
// array will be [8, 1, 2, 3, 4, 5, 6, 7]
