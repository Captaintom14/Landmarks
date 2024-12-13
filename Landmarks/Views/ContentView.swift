//
//  ContentView.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView().frame(height: 300)
            CircleUnit().offset(y:-130).padding(.bottom, -130)
            
            VStack(alignment:.leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock").font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
