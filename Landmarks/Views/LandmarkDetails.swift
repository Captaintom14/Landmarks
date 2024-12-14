//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-13.
//

import SwiftUI


struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    
    
    var landmark: Landmark
    
    var body: some View {
        
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)


            CircleUnit(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                
                HStack{
                    
                    Text(landmark.name)
                                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    
                }
                


                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)


                Divider()


                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
    }
}


#Preview {
    
    let modelData = ModelData()
    return LandmarkDetail(landmark: ModelData().landmarks[0]).environment(modelData)
}
