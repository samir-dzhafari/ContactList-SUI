//
//  ContactRow.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct ContactsRowView: View {
    let person: Person
    
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Text(person.fullName)
                Spacer()
                Image(systemName: "chevron.forward")
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ContactsRowView(person: Person(phone: "1", email: "2", name: "Tim", lastName: "Cook"), action: {})
}
