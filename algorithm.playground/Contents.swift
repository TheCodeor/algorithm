//: Playground - noun: a place where people can play

import UIKit

/*
 递归算法是一种直接或者间接地调用自身算法的过程。在计算机编写程序中，递归算法对解决一大类问题是十分有效的，它往往使算法的描述简洁而且易于理解。
 递归算法解决问题的特点：
 (1) 递归就是在过程或函数里调用自身。
 (2) 在使用递归策略时，必须有一个明确的递归结束条件，称为递归出口。
 (3) 递归算法解题通常显得很简洁，但递归算法解题的运行效率较低。所以一般不提倡用递归算法设计程序。
 (4) 在递归调用的过程当中系统为每一层的返回点、局部量等开辟了栈来存储。递归次数过多容易造成栈溢出等。所以一般不提倡用递归算法设计程序。
 
 要求
 递归算法所体现的“重复”一般有三个要求：
 一是每次调用在规模上都有所缩小(通常是减半)；
 二是相邻两次重复之间有紧密的联系，前一次要为后一次做准备(通常前一次的输出就作为后一次的输入)；
 三是在问题的规模极小时必须用直接给出解答而不再进行递归调用，因而每次递归调用都是有条件的(以规模未达到直接解答的大小为条件)，无条件递归调用将会成为死循环而不能正常结束。
 
 如何设计递归算法
 1.确定递归公式
 2.确定边界(终了)条件
 
*/

//斐波纳契数列，又称黄金分割数列，指的是这样一个数列：1、1、2、3、5、8、13、21、……
func foo(_ i:Int) -> Int {
    
    if i <= 0 {
        return 0
    } else if (i > 0 && i <= 2) {
        return 1
    } else {
        return foo(i - 1) + foo(i - 2)
    }
}

//print(foo(3))

//计算n!可用递归公式如下 阶乘
func fac(_ i:Int) -> Int {
    if i == 0 {
        return 1;
    } else {
        return i*fac(i - 1)
    }
}

//print(fac(5))
let char: String = "dfadfdas"

//char[1]

var str = ""
var numArr = [Int]()

func changeTwo(_ i:Int) -> String {
    
    if i == 0 {
        for s in numArr {
            str += String(s)
        }
        return str
    }
    
    numArr.insert(i%2, at:0)
    return changeTwo(i/2)

}

print(changeTwo(10))










