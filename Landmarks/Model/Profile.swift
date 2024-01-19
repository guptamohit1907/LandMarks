//
//  Profile.swift
//  Landmarks
//
//  Created by Mohit Gupta on 13/12/23.
//

import Foundation

struct Profile{
    var username : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season : String, CaseIterable, Identifiable{
        case spring = "🌹"
        case summer = "🌞"
        case autumm = "🍍"
        case winter = "🐻‍❄️"
        
        var id : String { rawValue }
    }
}
