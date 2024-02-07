//
//  LoginView.swift
//  Wordle
//
//  Created by Eli Dresnin (student LM) on 2/5/24.
//

import SwiftUI
//import library needed
import FirebaseAuth

struct SignUpView: View {
    @EnvironmentObject var user: User
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.background)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding()
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.wordleGrey)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    TextField("email address", text: $user.email)
                        .multilineTextAlignment(.center)
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.wordleGrey)
                        .frame(width: 300, height: 65)
                        .cornerRadius(25)
                    SecureField("password", text: $user.password)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                
                Button {
                    
                } label: {
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color.wordleYellow)
                            .frame(width: 300, height: 65)
                            .cornerRadius(25)
                        Text("Login")
                            .font(Constants.smallFont)
                    }
                }
                
                
                ZStack{
                    Button {
                        Auth.auth().createUser(withEmail: user.email, password: user.password){user, error in
                            
                        }
                    } label: {
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color.wordleGreen)
                                .frame(width: 300, height: 65)
                                .cornerRadius(25)
                            Text("Sign Up")
                                .font(Constants.smallFont)
                        }
                    }
                    
                    
                }
                Spacer()
            }
        }.padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .environmentObject(User())
    }
}
