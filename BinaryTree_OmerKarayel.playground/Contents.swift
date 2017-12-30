//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Node {
    var value: Int
    var leftChild: Node?
    var rightChild: Node?

    init(value: Int, leftChild: Node? = nil, rightChild: Node? = nil) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

func isValid(node: Node?) -> Bool {
   
    guard let rootNode = node else {
        return true
    }
    
    
    if let leftChild = rootNode.leftChild {
        if rootNode.value <= leftChild.value {
            return false
        }
    }
    
    
    if let rightChild = rootNode.rightChild {
        if rootNode.value > rightChild.value {
            return false
        }
    }

    return isValid(node: rootNode.leftChild) && isValid(node: rootNode.rightChild)
    
}

var node1 = Node(value: 6)
node1.leftChild = Node(value: 3)
node1.rightChild = Node(value: 9)
node1.leftChild!.rightChild = Node(value: 4)
node1.leftChild!.leftChild = Node(value: 2)
node1.rightChild!.rightChild = Node(value: 11)
node1.rightChild!.leftChild = Node(value: 8)



isValid(node: node1)

