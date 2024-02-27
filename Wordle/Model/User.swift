//
//  File.swift
//  Wordle
//
//  Created by Eli Dresnin (student LM) on 2/5/24.
//

import SwiftUI

class User: ObservableObject{
    @Published var email: String
    @Published var password: String
    @Published var name: String
    @Published var image: UIImage
    @Published var loggedIn: Bool
    @Published var win: String
    init(email: String = "", password: String = "", name: String = "", image: String = "", loggedIn: Bool = false, win: String = "") {
        self.email = email
        self.name = name
        self.image  = UIImage(named: "default") ?? UIImage()
        self.password = password
        self.loggedIn = false
        self.win = win
    }
}
