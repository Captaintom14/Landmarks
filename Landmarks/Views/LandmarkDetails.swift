//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-13.
//

import SwiftUI


struct LandmarkDetail: View {
    var landmark: Landmark


    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)


            CircleUnit(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)


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
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
