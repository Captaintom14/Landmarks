//
//  MapView.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI
import MapKit



private var region: MKCoordinateRegion{
    
    MKCoordinateRegion(
        
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
                    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    
}



struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView()
}
