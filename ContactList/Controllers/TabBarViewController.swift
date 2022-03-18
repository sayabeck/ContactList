//
//  TabBarViewController.swift
//  ContactList
//
//  Created by mac mini on 3/18/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferToViewControllers()
    }

    private func transferToViewControllers() {
        let persons = Person.getPersons()
        
        let firstVC = viewControllers?.first as! UINavigationController
        if let contactListVC = firstVC.topViewController as? ContactListViewController {
            contactListVC.persons = persons
        }
        
        let secondVC = viewControllers?.last as! UINavigationController
        if let secondContactListVC = secondVC.topViewController as? SecondContactListViewController {
            secondContactListVC.persons = persons
        }
    }
   
}
