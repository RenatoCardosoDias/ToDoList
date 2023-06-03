//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct ToDoListView: View {
	@StateObject var vm = ToDoListViewViewModel()

	private let userID: String

	init(userID: String) {
		self.userID = userID
	}

    var body: some View {
		NavigationView{
			VStack {

			} //end VStack
			.navigationTitle("To Do List")
			.toolbar{
				Button{
					//Action
				} label: {
					Image(systemName: "plus")
				} //end Button
			} //end .toolbar
		} //end NavigationView
    } //var body
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userID: "")
    }
}
