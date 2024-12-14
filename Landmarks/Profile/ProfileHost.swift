//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-14.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var draftProfile = Profile.default
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 20){
            ProfileSummary(profile: draftProfile)
        }
        
    }
}

#Preview {
    ProfileHost()
}
