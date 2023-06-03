//
//  RegisterView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct RegisterView: View {
	@StateObject var vm = RegisterViewViewModel()


    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            HeaderView(title: "Register", subTitle: "Start organizing tods", angle: -15, backgroundColor: .orange)
			Form {
				TextField("Full Name", text: $vm.name)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocorrectionDisabled() 
				TextField("E-mail Address", text: $vm.email)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocapitalization(.none)
					.autocorrectionDisabled()
				SecureField("Password", text: $vm.password)
					.textFieldStyle(DefaultTextFieldStyle())
				TLButton(title: "Create Account", backgroundColor: .green) {
					//Attempt registration
					vm.register()
				} //end TLButton
			} //end form
			.offset(y: -50)
            Spacer()
		} //end VStack
    } //end var body
} //end struct

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
