//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
	@Published var email = ""
	@Published var password = ""

	init() {} //end  init

	func login() {}

	func validate() {}
} //end class LoginViewViewModel
