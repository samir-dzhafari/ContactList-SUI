//
//  NavigationTabViewModel.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import Foundation

final class NavigationTabViewModel: ObservableObject {
    
    let getPersonsUseCase: GetPersons
    
    init() {
        getPersonsUseCase = GetPersons()
        fetchPersons()
    }
    
    // Persons
    
    @Published var persons: [Person] = []
    
    private func fetchPersons() {
        persons = getPersonsUseCase.execute()
    }
    
}
