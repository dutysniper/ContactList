//
//  Person.swift
//  ContactList
//
//  Created by Константин Натаров on 17.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String
    var fullname: String {
        name + " " + surname
    }
    
    static func getPersonInfo() -> [Person] {
        var people = [Person]()
        let randomName = DataStore.names.shuffled()
        let randomSurname = DataStore.surnames.shuffled()
        let randomNumber = DataStore.numbers.shuffled()
        let randomEmail = DataStore.emails.shuffled()
        for i in 1...randomName.count - 1 {
            people.append(Person(
                name: randomName[i],
                surname: randomSurname[i],
                number: randomNumber[i],
                email: randomEmail[i]
            )
            )
        }
        return people
    }
}
