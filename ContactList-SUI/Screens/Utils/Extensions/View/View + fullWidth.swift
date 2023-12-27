//
//  View + fullWidth.swift
//  ContactList-SUI
//
//  Created by Самир Джафари on 27.12.2023.
//

import SwiftUI

extension View {
    func fullWidth() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
