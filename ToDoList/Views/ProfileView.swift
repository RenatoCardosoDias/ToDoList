//
//  ProfileView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct ProfileView: View {
	@StateObject var vm = ProfileViewViewModel()

	init() {}

	
    var body: some View {
		NavigationView{
			VStack{

			} //end VStack
			.navigationTitle("Profile")
		} //end NavigationView
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
