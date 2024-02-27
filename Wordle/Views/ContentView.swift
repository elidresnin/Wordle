//
//  ContentView.swift
//  Wordle
//
//  Created by Eli Dresnin (student LM) on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack {
            if user.loggedIn  {
                AccountView()
            }
            else{
                SignUpView()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(User())
    }
}
