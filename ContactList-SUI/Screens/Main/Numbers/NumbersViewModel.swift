//
//  NumbersViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 28.12.2023.
//

import Foundation

final class NumbersViewModel: ObservableObject {
    
    let payload: NumbersPayload
    
    init(payload: NumbersPayload) {
        self.payload = payload
    }
    
    var persons: [Person] {
        payload.persons
    }
    
}
