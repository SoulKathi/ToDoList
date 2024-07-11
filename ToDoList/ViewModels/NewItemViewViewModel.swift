//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    
    init() {
        
    }
    
    func save() {
        
    }
    
    var canSafe: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
