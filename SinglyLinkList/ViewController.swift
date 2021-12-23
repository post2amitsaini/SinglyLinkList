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
        
    }


}

