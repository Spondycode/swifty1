//
//  ContentView.swift
//  swifty1
//
//  Created by David Allen on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Cupertino, CA!")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180)
                        
                    Text("32°c")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
