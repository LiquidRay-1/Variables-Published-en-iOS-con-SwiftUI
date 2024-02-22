//
//  ContentView.swift
//  Test2
//
//  Created by dam2 on 22/2/24.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var username: String = ""
    // Una variable publicada notifica a la vista que la variable ha cambiado de valor
}

struct ContentView: View {
    
    @StateObject var userData = UserData()
    
    var body: some View {
        Form{
            Text("¡Bienvenid@, \(userData.username)!")
            UserProfileView()
                .environmentObject(userData)
        }
        .padding()
    }
}

struct UserProfileView: View{
    
    @EnvironmentObject var userData: UserData
    
    var body: some View{
        TextField("Introduce tu nombre", text: $userData.username)
    }
}

#Preview {
    ContentView()
}
