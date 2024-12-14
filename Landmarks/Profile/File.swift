//
//  File.swift
//  Landmarks
//
//  Created by Thomas Mejia on 2024-12-14.
//

import Foundation

struct Profile {
    var username : String
    var preferesNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username:"t_mejia")
    
    
    enum Season: String, CaseIterable, Identifiable{
        case spring = "🌷"
                case summer = "🌞"
                case autumn = "🍂"
                case winter = "☃️"

                var id: String { rawValue }
    }
}



