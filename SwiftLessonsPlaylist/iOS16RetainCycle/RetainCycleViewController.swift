//
//  RetainCycleViewController.swift
//  SwiftLessonsPlaylist
//
//  Created by Prince Avecillas on 2/4/23.
//

import UIKit

class RetainCycleViewController: UIViewController {

    var peter: User?
    var lois: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peter = User(firstName: "Peter", lastName: "Griffin")
        lois = User(firstName: "Lois", lastName: "Quagmire")
        
        peter?.spouse = lois //1 Reference (weak)
        lois?.spouse = peter //1
        
        peter = nil
        lois = nil
    }
    

}

class User {
    let firstName: String
    let lastName: String
    weak var spouse: User?
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    deinit {
        print("\(firstName) has been removed from memory")
    }
}
