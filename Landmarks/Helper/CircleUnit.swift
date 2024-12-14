//
//  CircleUnit.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI

struct CircleUnit: View {
    
    var image: Image
    
    var body: some View {
       
        image.clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    
    }
}

#Preview {
    CircleUnit(image: Image("turtlerock"))
}
