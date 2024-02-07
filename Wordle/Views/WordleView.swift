//
//  WordleView.swift
//  Wordle
//
//  Created by Eli Dresnin (student LM) on 2/7/24.
//

import SwiftUI
import FirebaseAuth

struct WordleView: View {
    @EnvironmentObject var user: User
    var body: some View {
        VStack {
            Spacer()
            ZStack{
                Button {
                    let success: ()? = try? Auth.auth().signOut()
                    if let _ = success {
                        self.user.loggedIn = false
                    }
                } label: {
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color.wordleGreen)
                            .frame(width: 300, height: 65)
                            .cornerRadius(25)
                        Text("Sign Out")
                    
                        
                    }
                }
            }
        }
    }
}

struct WordleView_Previews: PreviewProvider {
    static var previews: some View {
        WordleView()
            .environmentObject(User())
    }
}
