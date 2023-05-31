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
                SecureField("Password", text: $password)
            }

            //Crate Account

            Spacer()
        } //end VStack
    } //end var body
} //end struck LoginView

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
