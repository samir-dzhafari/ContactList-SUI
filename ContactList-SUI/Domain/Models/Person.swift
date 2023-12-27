//
//  Contact.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

struct Person: Hashable {
    let phone: String
    let email: String
    
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
