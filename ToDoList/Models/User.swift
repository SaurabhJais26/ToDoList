//
//  User.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
