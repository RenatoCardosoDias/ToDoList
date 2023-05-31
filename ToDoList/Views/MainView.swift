//
//  MainView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        } //end NavigationView

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
