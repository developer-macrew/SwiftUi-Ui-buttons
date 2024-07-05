//
//  File.swift
//  
//
//  Created by Sonoma on 05/07/24.
//

import Foundation
import SwiftUI

@available(iOS 13.0.0,*)
struct RotatingButtonStyle: ButtonStyle {
    let color: Color
    let cornerRaduis : CGFloat
    let strokColor : Color
    let strokeLineWidth : CGFloat
    let shadowColor : Color
    let shadowOpacity : CGFloat
    let shadowOffsetHorizontally : CGFloat
    let shadowOffsetVertically : CGFloat
    let foregroundColor : Color
    let rotationDegree : CGFloat
    let scaleEffect : CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                RoundedRectangle(cornerRadius: cornerRaduis)
                    .fill(color)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRaduis)
                            .stroke(strokColor, lineWidth: strokeLineWidth)
                            .shadow(color: shadowColor.opacity(shadowOpacity), radius: cornerRaduis, x: shadowOffsetHorizontally, y: shadowOffsetVertically)
                    )
            )
            .foregroundColor(foregroundColor)
            .rotationEffect(.degrees(configuration.isPressed ? rotationDegree : 0))
            .scaleEffect(configuration.isPressed ? scaleEffect : 1.0)
            .shadow(color: shadowColor.opacity(configuration.isPressed ? 0 : shadowOpacity), radius: cornerRaduis, x: shadowOffsetHorizontally, y: shadowOffsetVertically)
    }
}
