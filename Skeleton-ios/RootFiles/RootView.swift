//
//  RootView.swift
//  Skeleton-ios
//
//  Created by Bernardo Cervantes Mayagoitia on 06/04/26.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var navigationManager: NavigationManager = .shared
        
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            
            if UserDefaults.standard.object(forKey: "username") != nil {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    RootView()
}
