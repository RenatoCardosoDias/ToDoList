//
//  RegisterView.swift
//  ToDoList
//
//  Created by Renato on 30/05/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            HeaderView(title: "Register", subTitle: "Start organizing tods", angle: -15, backgroundColor: .orange)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
