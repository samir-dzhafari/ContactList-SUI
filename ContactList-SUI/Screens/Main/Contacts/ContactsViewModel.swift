//
//  ContactsViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class ContactsViewModel: ObservableObject {
    
    private let payload: ContactsPayload
    
    init(payload: ContactsPayload) {
        self.payload = payload
    }
    
    var persons: [Person] {
        payload.persons
    }
}
