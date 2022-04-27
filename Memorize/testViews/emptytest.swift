//
//  emptytest.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//
import SwiftUI

struct User {
    var firstName = "Ivan"
    var lastName = "Ivanov"
}

struct EmptyTestContentView: View {
    @State var user = User()
    var body: some View {
        VStack{
            Text("Hello, \(user.firstName) \(user.lastName) ")
            TextField("First", text: $user.firstName)
            TextField("Last", text: $user.lastName)
            
        }
    }
}


struct EmptyTestContentView_Preview: PreviewProvider {
    static var previews: some View {
        EmptyTestContentView()
    }
}


