//
//  GetPersons.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class GetPersons {
    
    func execute() -> [Person] {
        let dataStore = DataStore.shared
        
        var persons: [Person] = []
        
        let names = dataStore.names.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let emails = dataStore.emails.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        
        let maxIndex = min(
            names.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        ) - 1
        
        (0...maxIndex).forEach {
            let newPerson = Person(
                phone: phoneNumbers[$0],
                email: emails[$0],
                name: names[$0],
                lastName: lastNames[$0]
            )
            
            persons.append(newPerson)
        }
        
        return persons
    }
    
}
