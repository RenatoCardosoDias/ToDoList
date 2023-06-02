//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI
import FirebaseAuth

class LoginViewViewModel: ObservableObject  {
	@Published var email = ""
	@Published var password = ""
	@Published var errorMessage = ""

	init() {} //end  init

	func login() {
		guard validate() else{
			return
		}

		//Try log in
		Auth.auth().signIn(withEmail: email, password: password)
	}

	private func validate() -> Bool {
		errorMessage = ""
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {

			errorMessage = "Please fill in all fields."
			return false
		}
		//renato.dias@staki.com.br
		guard email.contains("@") && email.contains(".") else {
			errorMessage = "Please enter valid e-mail."
			return false
		}
		print("Called")
		return true
	}
} //end class LoginViewViewModel
