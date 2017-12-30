//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }
}

func isLoop(head: Node) -> Bool {

    var slowStep: Node = head
    var fastStep: Node? = head

    while fastStep?.next != nil &&  fastStep != nil  && slowStep != nil {
        slowStep = slowStep.next!
        fastStep = fastStep!.next!.next
        
        if slowStep === fastStep {
            return true
        }
    }

    return false
}


var head = Node(value: 0)
head.next = Node(value: 1)
head.next?.next = Node(value: 2)
head.next?.next?.next = Node(value: 3)
head.next?.next?.next?.next = Node(value: 4)
head.next?.next?.next?.next?.next = Node(value: 5)
head.next?.next?.next?.next?.next?.next = Node(value: 6)
head.next?.next?.next?.next?.next?.next?.next = Node(value: 7)
head.next?.next?.next?.next?.next?.next?.next?.next = head.next
isLoop(head: head)

