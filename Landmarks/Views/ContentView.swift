//
//  ContentView.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
