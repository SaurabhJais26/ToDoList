//
//  ProfileView.swift
//  ToDoList
//
//  Created by Saurabh Jaiswal on 10/07/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
