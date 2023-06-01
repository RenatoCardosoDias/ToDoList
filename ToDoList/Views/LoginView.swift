//
//  LoginView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        @StateObject var vm = LoginViewViewModel()

        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, backgroundColor: .pink)

                //Login Form
                Form {
					TextField("Email Adress", text: $vm.email)
                        .textFieldStyle(DefaultTextFieldStyle())
						.autocapitalization(.none)
					SecureField("Password", text: $vm.password)
                        .textFieldStyle(DefaultTextFieldStyle())

					TLButton(title: "Log In", backgroundColor: .blue) {
						//Attempt log in
					} //end TLButton
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
