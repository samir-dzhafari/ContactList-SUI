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
        List {
            HStack(alignment: .center) {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            .fullWidth()
            HStack(alignment: .center) {
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text(viewModel.phone)
            }
            HStack(alignment: .center) {
                Image(systemName: "envelope")
                    .foregroundStyle(.blue)
                Text(viewModel.email)
            }
        }
        .navigationTitle(viewModel.navigationTitle)
    }
}

#Preview {
    ContactDetailsView(payload: ContactDetailsPayload(person: Person(phone: "1", email: "2", name: "Tim", lastName: "Cook")))
}
