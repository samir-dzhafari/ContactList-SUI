//
//  ContentView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct NavigationTabView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @StateObject private var viewModel = NavigationTabViewModel()
    
    var body: some View {
        TabView {
            ContactsView(payload: ContactsPayload(persons: viewModel.persons))
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            NumbersView()
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    NavigationTabView()
}
