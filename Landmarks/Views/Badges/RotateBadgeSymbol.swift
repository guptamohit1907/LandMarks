//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Mohit Gupta on 10/12/23.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle : Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotateBadgeSymbol(angle: Angle(degrees: 5))
}
