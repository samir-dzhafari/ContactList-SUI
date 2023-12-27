//
//  ContactDetailsView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    
    @StateObject private var viewModel: ContactDetailsViewModel
    
    init(payload: ContactDetailsPayload) {
        self._viewModel = StateObject(wrappedValue: ContactDetailsViewModel(payload: payload))
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContactDetailsView(payload: ContactDetailsPayload(person: Person(phone: "1", email: "2", name: "Tim", lastName: "Cook")))
}
