//
//  ContentView.swift
//  ApiTest
//
//  Created by Pedro Delmondes  on 22/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = UsersViewModel()
    
    var body: some View {
        NavigationView{
            ZStack {
                
                if vm.isRefreshing {
                    ProgressView()
                } else {
                    List {
                        ForEach(vm.users, id: \.id) { user in
                            UserView(user: user)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .navigationTitle("Users")
                }
                
            }
            .onAppear(perform: vm.fetchUsers)
            .foregroundStyle(.orange)
            .alert(isPresented: $vm.hasError, error: vm.error) {
                Button(action: vm.fetchUsers) {
                    Text("Retry")
        }
    }
}

        }
    }

#Preview {
    ContentView()
}
