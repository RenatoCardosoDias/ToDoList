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

        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, backgroundColor: .pink)

                //Login Form
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())

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
                    .padding()
                } //end Form
                .offset(y: -50)
                //Crate Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                } //end VStack
                .padding(.bottom, 50)
                Spacer()
            } //end VStack
        }
    } //end var body
} //end struck LoginView

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
