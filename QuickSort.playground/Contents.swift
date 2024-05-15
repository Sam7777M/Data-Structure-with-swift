//: Merge Sort By Shashwat Mishra
/*
 Merge sort is a sorting algorithm with a simple strategy: divide and conquer.
 
 The steps for merge sort are simple:
 
 1. Split the unsorted array containing N elements into N arrays containing one element each
 2. Merge the piles together by sequentially pairing piles together in sorted order
 */

import UIKit

let unsortedArray = [7, 2, 6, 3, 9, 4]


func quickSort(arr:[Int]) -> [Int]{
    
    var less = [Int]()
    var equal = [Int]()
    var greater = [Int]()
    
    if arr.count > 1{
        let pivot = arr[0]
        
        for x in arr{
            if x < pivot{
                less.append(x)
            }
            if x == pivot{
                equal.append(x)
            }
            if x > pivot{
                greater.append(x)
            }
        }
        return (quickSort(arr:less)+equal+quickSort(arr:greater))
    }else{
        return arr
    }
    
}
let sortedArr = quickSort(arr: unsortedArray)

/*
 Time Complexity of Quick Sort
 
 Best - O(n log(n))
 Worst - O(n2)
 Avg - O(n log(n))
 */
