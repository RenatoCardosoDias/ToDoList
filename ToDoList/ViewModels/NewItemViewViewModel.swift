//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
	@Published var title = ""
	@Published var dueDate = Date()
	@Published var showAlert = false

	
	init(){}

	func save(){
		//verificar se todos os campos estão validos e se não retornou alguma inconformidade
		guard canSave else {
			return
		}
		//criar uma nova instancia do noss to-do-list-item-model

		//Get current user id
		guard let uId = Auth.auth().currentUser?.uid else {
			return
		}

		//Create model
		let newId = UUID().uuidString
		let newItem = ToDoListItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createDate: Date().timeIntervalSince1970, isDone: false)


		//Save model in database
		let db = Firestore.firestore()
		db.collection("users")
			.document(uId)
			.collection("todos")
			.document(newId)
			.setData(newItem.asDictionary()) //converter o model em dicionário que podemos escrever no nosso banco de dados
		
	}
	var canSave: Bool {
		//vamos checar algumas coisas
		guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { //verificando se a caixa de texto não tem um bando de espaços garantindo que a caixa de texto esteja com uma bando de espacos e tabs
			return false
		}
		//Garantir que a data seja maior que a data atual ou maior que o dia atual menos 86400 seconds que são 24 horas garantindo que que a data de entrega seja maior que o iqual ontem 
		guard dueDate >= Date().addingTimeInterval(-86400) else {
			return false
		}

		return true
	}
}
