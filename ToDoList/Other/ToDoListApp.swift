//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
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
