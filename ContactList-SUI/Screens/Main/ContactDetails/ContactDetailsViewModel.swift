//
//  ContactDetailsViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class ContactDetailsViewModel: ObservableObject {
    
    private let payload: ContactDetailsPayload
    
    init(payload: ContactDetailsPayload) {
        self.payload = payload
    }
    
    var navigationTitle: String {
        payload.person.fullName
    }
    
    var phone: String {
        payload.person.phone
    }
    
    var email: String {
        payload.person.email
    }
    
}
