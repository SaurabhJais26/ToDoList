//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//  View Model for list of items view
//  Primary Tab

import Foundation

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
