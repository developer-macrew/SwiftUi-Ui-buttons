//
//  File.swift
//  
//
//  Created by Sonoma on 05/07/24.
//

import Foundation
import SwiftUI
public enum RotationType {
    case LeftToRight , RightToLeft
}
@available(iOS 13.0.0,*)
struct RotatingButtonStyle: ButtonStyle {
    let gradientColor: [Color]
    let gradientStartPoint : UnitPoint
    let gradientEndPoint : UnitPoint
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
    let rotationType : RotationType
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                RoundedRectangle(cornerRadius: cornerRaduis)
                    .fill(LinearGradient(colors:gradientColor, startPoint:gradientStartPoint, endPoint:gradientEndPoint))
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRaduis)
                            .stroke(strokColor, lineWidth: strokeLineWidth)
                            .shadow(color: shadowColor.opacity(shadowOpacity), radius: cornerRaduis, x: shadowOffsetHorizontally, y: shadowOffsetVertically)
                    )
            )
            .foregroundColor(foregroundColor)
            .rotationEffect(.degrees(configuration.isPressed ? (rotationType == .LeftToRight ? rotationDegree : -rotationDegree) : 0))
            .scaleEffect(configuration.isPressed ? scaleEffect : 1.0)
            .shadow(color: shadowColor.opacity(configuration.isPressed ? 0 : shadowOpacity), radius: cornerRaduis, x: shadowOffsetHorizontally, y: shadowOffsetVertically)
    }
}
