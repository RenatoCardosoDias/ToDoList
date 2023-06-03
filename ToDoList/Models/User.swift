//
//  User.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import Foundation

struct User: Codable {
	let id: String
	let name: String
	let email: String
	let joined: TimeInterval
}
