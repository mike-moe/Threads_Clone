//
//  LoginViews.swift
//  ThreadsClone
//
//  Created by Mahyar Moazezi on 1/18/24.
//

import SwiftUI

struct LoginViews: View {
    @State private var email : String = ""
    @State private  var password : String = ""
    var body: some View {
        NavigationStack{
            Image(systemName: "at").resizable().frame(width: 120,height: 120).scaledToFit().padding()
            VStack(spacing:20){
                TextField("Enter your email adress", text: $email).textFieldStyle().textInputAutocapitalization(.never)
                SecureField("Enter your password", text: $password).secureTextFieldStyle()
            }
            NavigationLink{
                Text("Forgot Password")
            } label: {
                Text("Forgot Password").font(.footnote).fontWeight(.bold).foregroundStyle(.black).frame(maxWidth: .infinity,alignment: .trailing).padding()
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Login".uppercased()).padding().foregroundColor(.white).font(.subheadline).fontWeight(.bold).frame(width: 352,height: 44).background(.black).clipShape(RoundedRectangle(cornerRadius: 10))
            })
            Spacer()
            Divider()
            NavigationLink{
                RegisterViews().navigationBarBackButtonHidden(true)
            }label: {
                HStack {
                    Text("Don't Have an account?")
                    Text("Sign up").fontWeight(.bold).underline()
                }.foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    LoginViews()
}
