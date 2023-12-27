//
//  ContentView.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

struct NavigationTabView: View {
    
    @StateObject private var viewModel = NavigationTabViewModel()
    
    @State private var tabTitle = "Contacts"
    
    var body: some View {
        TabView {
            ContactsView(
                payload: ContactsPayload(persons: viewModel.persons)
            )
            .tabItem {
                Label("Contacts", systemImage: "person.2.fill")
            }
            .onAppear {
                tabTitle = "Contacts"
            }
            
            NumbersView(
                payload: NumbersPayload(persons: viewModel.persons)
            )
            .tabItem {
                Label("Numbers", systemImage: "phone.fill")
            }
            .onAppear {
                tabTitle = "Numbers"
            }
        }
        .navigationTitle(tabTitle)
    }
}

#Preview {
    NavigationTabView()
}
