//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by Mohit Gupta on 10/12/23.
//

import Foundation
import SwiftUI

struct BadgeBackground : View {
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    var body : some View{
        GeometryReader{ geometry in
            Path{ path in
                var width : CGFloat = 100.0
                let height = width
                let xScale : CGFloat = 0.0832
                let xoffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale
                
                path.move(
                    to : CGPoint(
                        x : width * 0.95 + xoffset,
                        y : height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                HexagonParameters.segments.forEach { segment in
                    path.addLine(
                        to : CGPoint(
                            x : width * segment.line.x + xoffset,
                            y : height * segment.line.y
                        )
                    )
                    path.addQuadCurve(to: CGPoint(
                            x: width * segment.curve.x + xoffset,
                            y: height * segment.curve.y
                    ),
                    control: CGPoint(
                            x : width * segment.control.x + xoffset,
                            y : height * segment.control.y
                    )
                  )
                }
            }
            .fill(.linearGradient(Gradient(colors: [Self.gradientStart, Self.gradientEnd]), startPoint: UnitPoint(x : 0.5, y : 0), endPoint: UnitPoint(x : 0.5, y : 0.6)))
        }
        .aspectRatio(1,contentMode: .fit)
    }
}

#Preview{
    BadgeBackground()
}
