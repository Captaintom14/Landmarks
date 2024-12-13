//
//  CircleUnit.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-11.
//

import SwiftUI

struct CircleUnit: View {
    var body: some View {
        Image("turtlerock").clipShape(Circle())
            .overlay{
                
        Circle().stroke(.white, lineWidth: 4)
                
        }
            .shadow(radius: 4)
    
    }
}

#Preview {
    CircleUnit()
}
