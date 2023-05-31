//
//  LoginView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        @State var email = ""
        @State var password = ""

        VStack{
            // Header
            HeaderView()

            //Login Form
            Form {
                TextField("Email Adress", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button{
                    //Attempt log in - tentar fazer login

                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Log in")
                            .foregroundColor(Color.white)
                            .bold()
                    } //end ZStack
                } //end Button label
            } //end Form

            //Crate Account
            VStack{
                Text("New around here?")
                Button("Create An Account") {
                    //Attemp Sign In
                } //end Button
            } //end VStack
            .padding(.bottom, 50)
            Spacer()
        } //end VStack
    } //end var body
} //end struck LoginView

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
