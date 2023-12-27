//
//  NumbersView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct NumbersView: View {
    
    @StateObject private var viewModel: NumbersViewModel
    
    init(payload: NumbersPayload) {
        self._viewModel = StateObject(wrappedValue: NumbersViewModel(payload: payload))
    }
    
    var body: some View {
        List(viewModel.persons, id: \.self) { person in
            NumbersDataItemView(person: person)
        }
        .listStyle(.grouped)
    }
}

#Preview {
    NumbersView(payload: NumbersPayload(persons: [
        Person(phone: "1", email: "2", name: "Tim", lastName: "Cook")
    ]))
}
