//
//  ToDoListemItem.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import Foundation

struct ToDoListItem: Codable, Identifiable{
	let id: String
	let title: String
	let dueDate: TimeInterval
	let createDate: TimeInterval
	var isDone: Bool

	mutating func setDone(_ state: Bool){ //a razão pela qual precisamos disso aqui é que, assim que trouxermos a funcionalidade para marcar ou desmarcar se um item foi concluído, vamos querer modificar o modelo para refletir isso antes de salvar ou atualizar nosso banco de dados
		isDone = state
	}
}
