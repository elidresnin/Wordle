//
//  AccountView.swift
//  Wordle
//
//  Created by Eli Dresnin (student LM) on 2/27/24.
//

import SwiftUI
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase


struct AccountView: View {
    @EnvironmentObject var user: User
    @State var showSheet = false
    var body: some View {
        VStack{
            Image(uiImage: user.image)
                .resizable()
                .clipShape(Circle())
            Spacer()
            Spacer()
            Spacer()
            TextField("name", text: $user.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onSubmit {
                    guard let uid = Auth.auth().currentUser?.uid else {return}
                    Database.database().reference().child("users/\(uid)/name")
                        .setValue(user.name)
                }
            TextField("win percentage", text: $user.win)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button{
                showSheet.toggle()
            }label:{
                VStack{
                    RoundedRectangle(cornerRadius: 15)
                            .fill(.white)
                    Text("Update Account")
                }
            }.sheet(isPresented: $showSheet,onDismiss: {
                guard let uid = Auth.auth().currentUser?.uid else {return}

                guard let imageData = user.image.jpegData(compressionQuality: 0.5) else {return}
                
                Storage.storage().reference().child("users/\(uid)").putData(imageData){meta, error in
                    if let _ = meta {
                        Storage.storage().reference().child("users/\(uid)").downloadURL { url, error in
                            if let u = url {
                                Database.database().reference().child("users/\(uid)/imagepath")
                                    .setValue(u.absoluteString)
                            }
                        }
                    }
                }

            }, content:{
                ImagePicker(selectedImage: $user.image)
            })

        }

    }

}



struct AccountView_Previews: PreviewProvider {

    static var previews: some View {

        AccountView()

            .environmentObject(User())

    }

}
