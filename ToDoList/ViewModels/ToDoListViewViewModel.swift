//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import Foundation

///ViewModel for list of items view
///Primary tab
class ToDoListViewViewModel: ObservableObject{
	@Published var showingNewItemView : Bool = false

	
	init(){}

} //end class ToDoListViewViewModel
