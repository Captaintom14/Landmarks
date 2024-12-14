//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-13.
//

import SwiftUI


struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false;
    

    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    
    
    var body: some View {
        NavigationSplitView {
            List{
                
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favourties Only")
                }
                
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList().environment(ModelData())
}
