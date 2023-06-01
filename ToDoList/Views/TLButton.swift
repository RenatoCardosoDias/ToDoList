//
//  TLButton.swift
//  ToDoList
//
//  Created by Renato on 31/05/23.
//

import SwiftUI

struct TLButton: View {
	let title: String
	let backgroundColor: Color
	let action: () -> Void

    var body: some View {
		Button{
			//Attempt log in - tentar fazer login
			//Action
			action()

		} label: {
			ZStack{
				RoundedRectangle(cornerRadius: 10)
					.foregroundColor(backgroundColor)
				Text(title)
					.foregroundColor(Color.white)
					.bold()
			} //end ZStack
		} //end Button label
		.padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
		TLButton(title: "Value", backgroundColor: .pink) {
			//Actopm
		}
    }
}
