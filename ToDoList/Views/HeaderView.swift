//
//  HeaderView.swift
//  ToDoList
//
//  Created by Renato on 31/05/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let backgroundColor: Color


    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            } //end VStack
            .padding(.top, 80)
        } //end ZStack
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subTitle: "SubTitle", angle: 15, backgroundColor: .blue)
    }
}
