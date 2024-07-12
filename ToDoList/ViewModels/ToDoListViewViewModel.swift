//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//  View Model for list of items view
//  Primary Tab

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete ToDo list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
