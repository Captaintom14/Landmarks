//
//  ContentView.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    
    enum Tab {
        case featured
        case list
    }
                    
    var body: some View {
        TabView(selection: $selection) {
                   CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                   LandmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
               }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
