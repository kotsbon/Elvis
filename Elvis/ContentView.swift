//
//  ContentView.swift
//  Elvis
//From Prof.G YouTube Evis Costello Challenge #1
//  Created by James Worladge on 27/1/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .foregroundStyle(.purple)
                .fontWeight(.black)
                .font(.largeTitle)
            
            Spacer()
            
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Text(message)
                .foregroundStyle(.purple)
                .fontWeight(.black)
                .font(.largeTitle)
        
        Spacer()
        
        HStack {
            Button("Peace")   {
                imageName = "peacesign"
                message = "Peace"
            }
            Button("Love")   {
                imageName = "heart"
                message = "Love"
            }
            Button("Understanding")   {
                imageName = "lightbulb"
                message = "Understanding"
            }
            
        }
                    
            Button("Clear") {
                imageName = ""
                message = ""
                   
            }
            
        
        
    }
        .buttonStyle(.borderedProminent)
        .tint(.purple)
        .padding()
    }
}

#Preview {
    ContentView()
}
