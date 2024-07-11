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
    
    
    init() {
        
    }
    
    func save() {
        
    }
}
