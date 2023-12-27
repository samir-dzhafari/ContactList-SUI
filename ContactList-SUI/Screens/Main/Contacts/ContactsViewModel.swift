//
//  ContactsViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class ContactsViewModel: ObservableObject {
    
    let payload: ContactsPayload
    
    init(payload: ContactsPayload) {
        self.payload = payload
    }
}
