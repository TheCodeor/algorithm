//: Playground - noun: a place where people can play

import UIKit

//桶排序 时间复杂度O(M+N) M为桶的个数 N为待排序的个数
/*
var a = Array(repeating: 0, count: 11)

var input = [5, 3, 5, 2, 8]
for t in input {
    a[t] += 1
}

for (index, value) in a.enumerated().reversed() {

    if value != 0 {
        for j in 1...value {
            print(index)
        }
    }
}
*/

//冒泡排序 时间复杂度是 O(N2)
/*
struct Student {
    var name = ""
    var score = 0
}

var a = [Student(name: "huhu", score: 5),
         Student(name: "haha", score: 3),
         Student(name: "xixi", score: 5),
         Student(name: "hengheng", score: 2),
         Student(name: "gaoshou", score: 8)]
var t = Student()

for i in 0...a.count - 1 {
    for j in 0...a.count - 2 {
        if a[j].score < a[j+1].score {
            t = a[j]
            a[j] = a[j+1]
            a[j+1] = t
        }
    }
}

for student in a {
    print(student.name)
}
*/

//快速排序 平均时间复杂度为 O(NlogN)

var a = [10, 8, 4, 3, 6, 5, 7, 2, 9, 1]

func quicksort(left: Int, right: Int) {
    
    var i = 0
    var j = 0
    var t = 0
    var temp = 0
    
    if left > right {
        return;
    }
    
    temp = a[left]
    i = left
    j = right
    
    while i != j {
        while a[j] >= temp && i < j {
            j -= 1
        }
        
        while a[i] <= temp && i < j {
            i += 1
        }
        
        if i < j {
            t = a[i]
            a[i] = a[j]
            a[j] = t
        }
    }
    
    a[left] = a[i]
    a[i] = temp
    
    quicksort(left: left, right: i - 1)
    quicksort(left: i + 1, right: right)
}

quicksort(left: 0, right: 9)
print(a)





