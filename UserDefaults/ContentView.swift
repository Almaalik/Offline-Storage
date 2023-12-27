//
//  ContentView.swift
//  UserDefaults
//
//  Created by DB-MBP-012 on 12/12/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ContentViewModel()
    @State private var emailId = ""
    @AppStorage("name") var myEmail: String?
    
    @State private var password = ""
    @KeychainStorage("password") var myPassword = "N/A"
    
    var body: some View {
        VStack {
            Spacer()
            Group {
                Text("UserDefaults")
                TextField("Enter emailId", text: $emailId)
                Button("Save email id") {
                    myEmail = emailId
                }
                Text(myEmail ?? "N/A")
            }.padding()
            
            Group {
                Text("KeyChain")
                TextField("Enter Password", text: $password)
                Button("Save password") {
                    myPassword = password
                }
                Text(myPassword ?? "N/A")
            }.padding()
            
                Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
