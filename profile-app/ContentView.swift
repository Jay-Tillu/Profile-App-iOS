//
//  ContentView.swift
//  profile-app
//
//  Created by Jay Tillu on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Jay Tillu")
                        .font(.system(size: 35))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .shadow(radius: 5)
                    Text("iOS | Front End Developer")
                        .foregroundStyle(Color.white)
                        .font(.system(.body))
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundStyle(Color.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 8)
                }
                Spacer()
                VStack(alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundStyle(Color.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundStyle(Color.pink)
                                .font(.system(size: 25))
                        )
                    HStack(alignment: .center, spacing: 60) {
                        VStack {
                            Text("1769")
                                .font(.title)
                                .foregroundStyle(Color.pink)
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                        }
                        VStack {
                            Text("800")
                                .font(.title)
                                .foregroundStyle(Color.pink)
                            Text("Followers")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                        }
                        VStack {
                            Text("231")
                                .font(.title)
                                .foregroundStyle(Color.pink)
                            Text("Following")
                                .font(.caption)
                                .foregroundStyle(Color.gray)
                        }
                    }
                    Text("About you")
                        .font(.title)
                    Text(
                        "I'm an iOS Frontend Developer. Welcome to the series of iOS Projects. Let's dive deeper and create some more awesome projects together."
                    )
                    .font(.body)
                    .foregroundStyle(Color.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                    .opacity(0.7)
                }.padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
