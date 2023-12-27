//
//  NumbersDataItemView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 28.12.2023.
//

import SwiftUI

struct NumbersDataItemView: View {
    let person: Person
    
    var body: some View {
        Section {
            Text(person.fullName)
                .font(.headline)
                .foregroundStyle(.gray)
                .frame(alignment: .center)
            HStack {
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text(person.phone)
            }
            HStack {
                Image(systemName: "envelope")
                    .foregroundStyle(.blue)
                Text(person.email)
            }
        }
    }
}

#Preview {
    NumbersDataItemView(person: Person(phone: "1", email: "2", name: "Samir", lastName: "Dzhafari"))
}
