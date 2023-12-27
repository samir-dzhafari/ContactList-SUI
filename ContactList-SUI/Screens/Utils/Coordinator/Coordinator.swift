//
//  Coordinator.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

enum Page: Hashable, Identifiable {
    
    case navigationTab
    case contactDetails(payload: ContactDetailsPayload)
    
    var id: String {
        switch self {
        case .navigationTab:
            return "navigationTab"
        case .contactDetails(let payload):
            return "contactDetails_\(payload)"
        }
        
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .navigationTab:
            NavigationTabView()
        case let .contactDetails(payload):
            ContactDetailsView(payload: payload)
        }
    }
}
