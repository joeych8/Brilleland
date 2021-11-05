//
//  CustomNavigation.swift
//  Brilleland
//
//  Created by joey chau on 28/10/2021.
//

import SwiftUI

struct CustomNavigation: View {
    
    @State var isLoggedIn: Bool = false

    var body: some View {
        ZStack {
            if !isLoggedIn {
                LoginView(isLoggedIn: $isLoggedIn)
            } else {
                BrillelandTabView()
            }
        }
    }
}
