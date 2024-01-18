//
//  RegisterViews.swift
//  ThreadsClone
//
//  Created by Mahyar Moazezi on 1/18/24.
//

import SwiftUI

struct RegisterViews: View {
    @State private var email : String = ""
    @State private  var password : String = ""
    @State private  var fullname : String = ""
    @State private  var username : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Image(systemName: "at").resizable().frame(width: 120,height: 120).scaledToFit().padding()
        VStack(spacing:20){
            TextField("Enter your email adress", text: $email).textFieldStyle()
            SecureField("Enter your password", text: $password).secureTextFieldStyle()
            TextField("Enter your username adress", text: $username).textFieldStyle()
            TextField("Enter your email adress", text: $fullname).textFieldStyle()
        }
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Sign Up".uppercased()).padding().foregroundColor(.white).font(.subheadline).fontWeight(.bold).frame(width: 352,height: 44).background(.black).clipShape(RoundedRectangle(cornerRadius: 10)).padding()
        })
        Spacer()
        Divider()
        Button(action: {dismiss()}, label: {
            HStack {
                Text("Already Have an account?")
                Text("Sign in").fontWeight(.bold).underline()
            }.foregroundStyle(.black)
        })
        
        
    }
}

#Preview {
    RegisterViews()
}
