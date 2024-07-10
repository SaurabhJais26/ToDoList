//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
