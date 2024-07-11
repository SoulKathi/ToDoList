//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {
        
    }
}
