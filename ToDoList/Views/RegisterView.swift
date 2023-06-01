//
//  RegisterView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct RegisterView: View {
	@State var name = ""
	@State var email = ""
	@State var password = ""


    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            HeaderView(title: "Register", subTitle: "Start organizing tods", angle: -15, backgroundColor: .orange)
			Form {
				TextField("Full Name", text: $name)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocorrectionDisabled() 
				TextField("E-mail Address", text: $email)
					.textFieldStyle(DefaultTextFieldStyle())
					.autocapitalization(.none)
					.autocorrectionDisabled()
				SecureField("Password", text: $password)
					.textFieldStyle(DefaultTextFieldStyle())
				TLButton(title: "Create Account", backgroundColor: .green) {
					//Attempt registration
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
