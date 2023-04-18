//
//  DetailPersonListViewController.swift
//  ContactList
//
//  Created by Константин Натаров on 17.04.2023.
//

import UIKit

final class DetailPersonListViewController: UITableViewController {
     var people: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        people.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = people[indexPath.section].number
            content.image = UIImage(systemName: "phone.down.fill")
        default:
            content.text = people[indexPath.section].email
            content.image = UIImage(systemName: "checkmark.message.fill")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        people[section].fullname
    }
}

