//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by katja.ruebel on 07.07.24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) {
                    item in
                        ToDoListItemView(item: item)
                            .swipeActions {
                                Button("Delete") {
                                    viewModel.delete(id: item.id)
                                }
                                .foregroundColor(Color.red)

                            }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }

        }
                
    }
}

#Preview {
    ToDoListView(userId: "zBG9BolPeRMp0knZkgVQ00cK2l52")
}
