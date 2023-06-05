//
//  NewItemView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct NewItemView: View {
	@StateObject var vm = NewItemViewViewModel()
	@Binding var newItemPresented: Bool


    var body: some View {
		VStack{
			Text("New Item")
				.font(.system(size: 32))
				.bold()
				.padding(.top, 100)
			Form{
				//Title
				TextField("Title", text: $vm.title)
					.textFieldStyle(DefaultTextFieldStyle())

				//Due Date
				DatePicker("Due Date", selection: $vm.dueDate)
					.datePickerStyle(GraphicalDatePickerStyle())

				//Button
				TLButton(title: "Save", backgroundColor: .pink) {
					if vm.canSave{
						vm.save()
						//Depois que fizemos o salvamento correto dos dados podemos setar o binding para false, e mandar a nossa view embora
						newItemPresented = false
					} else {
						vm.showAlert = true
					}
				} //TLButton
				.padding()
 			} //end Form
			.alert(isPresented: $vm.showAlert) {
				Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer."))
			}
		} //end VStack
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
		NewItemView(newItemPresented: Binding(get: {
			return true
		}, set: { _ in

		}) )
    }
}
