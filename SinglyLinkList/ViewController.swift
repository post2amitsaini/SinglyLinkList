//
//  ViewController.swift
//  SinglyLinkList
//
//  Created by Amit Saini on 23/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        //Create Node Manually and try to print
        let node1 = Node(value: 1)
        let node2 = Node(value: 2)
        let node3 = Node(value: 3)
        
        node1.next = node2
        node2.next = node3
        print("Create node manually")
        print(node1)
        
        //Create Link list
        var list = LinkList<Int>()
        list.insertAtBeginning(1)
        list.insertAtBeginning(2)
        list.insertAtBeginning(3)
        print("Create Link list")
        print(list)
        
        //Insert node At End
        list.insertAtEnd(0)
        print("Link list after inserting the element at end")
        print(list)
        
        //Insert node after a particular node
        let findNode = list.nodeAt(index: 1)!
        list.insert(99, afterNode: findNode)
        print("Link list after inserting the element After index 1")
        print(list)
        
        //Remove first element from list/head level also called pop
        _ = list.pop()
        print("Link list after deleting the first element")
        print(list)
        
        //Remove last element
        _ = list.removelast()
        print("Link list after deleting the last element")
        print(list)
        
        //Remove node after a node
        let deleteNodeAfterThisNode = list.nodeAt(index: 0)!
        _ = list.remove(after: deleteNodeAfterThisNode)
        print("Link list after deleting the element after a particular node")
        print(list)
    }


}

