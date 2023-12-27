//
//  ContactDetailsViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class ContactDetailsViewModel: ObservableObject {
    
    let payload: ContactDetailsPayload
    
    init(payload: ContactDetailsPayload) {
        self.payload = payload
    }
    
}
