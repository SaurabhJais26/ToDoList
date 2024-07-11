//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId: String) {
        //users/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .background(Color.red)
                        }
                        .listStyle(PlainListStyle())
                }
                .navigationTitle("To Do List")
                .toolbar {
                    Button {
                        // action
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
        ToDoListView(userId: "P51JLNbdyNagPHWRZmOkejELtmN2")
    }
}
