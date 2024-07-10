//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {
        
    }
    
    func login() {
        
    }
    
    func validate() {}
}
