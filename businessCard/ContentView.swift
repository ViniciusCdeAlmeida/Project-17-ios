//
//  ContentView.swift
//  businessCard
//
//  Created by Apple Multiplier on 10/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("foto1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.accentColor)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))

                Text("Vinícius Corrêa")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Text("Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "Phone Number")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 30.0)
                .foregroundColor(.white)
            HStack {
                Image(systemName: "phone.fill")
                Text(text)
                    .foregroundColor(.black)
                    .font(.system(size: 25))
            }
        }
    }
}
