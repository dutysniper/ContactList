//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Константин Натаров on 17.04.2023.
//

import UIKit

final class PersonInfoViewController: UIViewController {
    
    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullname
        numberLabel.text = "Phone number: \(person.number)"
        emailLabel.text = "e-mail: \(person.email)"
    }
}
