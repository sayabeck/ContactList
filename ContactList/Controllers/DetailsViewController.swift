//
//  DetailsViewController.swift
//  ContactList
//
//  Created by mac mini on 3/18/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "email: \(person.email)"

    }


}
