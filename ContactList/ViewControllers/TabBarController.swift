//
//  TabBarController.swift
//  ContactList
//
//  Created by Константин Натаров on 18.04.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    private let people = Person.getPersonInfo()
    
    override func viewDidLoad() {
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.people = people
            } else if let detailPersonListVC = viewController as? DetailPersonListViewController {
                detailPersonListVC.people = people
            }
        }
    }
}



