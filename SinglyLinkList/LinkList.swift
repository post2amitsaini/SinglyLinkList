//
//  LinkList.swift
//  SinglyLinkList
//
//  Created by Amit Saini on 23/12/21.
//

import Foundation

struct LinkList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    //Also Called Push
    mutating func insertAtBeginning(_ value: T) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    //Insert Node at end and also Called Append
    mutating func insertAtEnd(_ value: T) {
        guard !isEmpty else {
            insertAtBeginning(value)
            return
        }
        let node = Node(value: value)
        tail?.next = node
        tail = node
    }
    
    //Find node at particular index
    func nodeAt(index: Int) -> Node<T>? {
        var currentIndex = 0
        var currentNode = head
        
        while(currentNode != nil && currentIndex < index) {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return currentNode
    }
    
    func insert(_ value: T,afterNode node: Node<T>) {
        node.next = Node(value: value, next: node.next)
    }
    
    //Remove element from first/head level
    mutating func pop() -> T? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    //Remove last node
    mutating func removelast() -> T? {
        guard let head = head else {
            return nil
        }
        guard head.next != nil else {
            return pop()
        }
        var previous = head
        var current = head
        while let next = current.next {
            previous = current
            current = next
        }
        previous.next = nil
        tail = previous
        return current.value
    }
    
    //Remove node after a node
    mutating func remove(after node: Node<T>) -> T? {
        defer {
            if node.next === tail {
                tail = node
            }
            
            node.next = node.next?.next
        }
        return node.next?.value
    }
    
    init() { }
}

//Not releated to link list, Just add for better understanding
extension LinkList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}
