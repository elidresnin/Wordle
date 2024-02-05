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
    @Published var image: String
    
    init(email: String = "", password: String = "", name: String = "", image: String = "") {
        self.email = email
        self.password = password
        self.name = name
        self.image = image
    }
}
