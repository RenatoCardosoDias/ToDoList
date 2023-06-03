//
//  MainView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct MainView: View {
	@StateObject var vm = MainViewViewModel()

    var body: some View {
		if vm.isSignedIn, !vm.currentUserID.isEmpty {
			accountView
		} else {
			LoginView()
		} //end TabView
    } //end var body

	@ViewBuilder
	var accountView: some View{
		TabView{
			ToDoListView(userID: vm.currentUserID) // o motivo de passar o usuario corrente é que queremos escutar em tempo real a lista de itens do usuario em questão
				.tabItem{
					Label("Home", systemImage: "house")
				} //end .tabItem
			ProfileView()
				.tabItem{
					Label("Profile", systemImage: "person.circle")
				}
		} //end TabView
	} //end var accountView
} //end struct MainView

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
