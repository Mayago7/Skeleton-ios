//
//  NavigationManager.swift
//  Skeleton-ios
//
//  Created by Bernardo Cervantes Mayagoitia on 06/04/26.
//

import Foundation
import Combine
import SwiftUI

class NavigationManager: ObservableObject {
    static let shared = NavigationManager()
    @Published var path = NavigationPath()
    private init() {}
}
