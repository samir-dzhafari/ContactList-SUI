//
//  ContactsView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct ContactsView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @StateObject private var viewModel: ContactsViewModel
    
    init(payload: ContactsPayload) {
        self._viewModel = StateObject(wrappedValue: ContactsViewModel(payload: payload))
    }
    
    var body: some View {
        List(viewModel.payload.persons, id: \.self) { person in
            ContactsRowView(person: person) {
                coordinator.push(.contactDetails(
                    payload: ContactDetailsPayload(person: person)
                ))
            }
        }
        .listStyle(.plain)
        .navigationTitle("Contacts")
    }
}

#Preview {
    ContactsView(
        payload: ContactsPayload(persons: [
            Person(phone: "1", email: "2", name: "Tim", lastName: "Cook")
        ])
    )
}
