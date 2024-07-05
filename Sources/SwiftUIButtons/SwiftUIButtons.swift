// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryButton: View {
    var text: String
    var action: () -> Void
    var backgroundColor : Color
    var foregroundColor : Color
    var cornerRadius : CGFloat
    var maxWidth : CGFloat
    var maxHeight : CGFloat
    public init(text: String,backgroundColor:Color,foregroundColor:Color, cornorRaduis: CGFloat, maxWidth:CGFloat, maxHeight: CGFloat, action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornorRaduis
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(foregroundColor)
                .frame(maxWidth:maxWidth,maxHeight:maxHeight)
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
    }
}

@available(iOS 13.0.0, *)
public struct SecondaryButton: View {
    var text: String
    var action: () -> Void
    var backgroundColor : Color
    var foregroundColor : Color
    var cornerRadius : CGFloat
    var roundedCornorRaduis : CGFloat
    var strokeColor : Color
    var stroleLineWidth : CGFloat
    var maxWidth : CGFloat
    var maxHeight : CGFloat
    public init(text: String, foregroundColor: Color, backgroundColor: Color , cornorRaduis:CGFloat, roundedCornorRaduis:CGFloat, strokeColor : Color,strokeLineWidth:CGFloat,maxWidth: CGFloat, maxHeight: CGFloat , action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornorRaduis
        self.roundedCornorRaduis = roundedCornorRaduis
        self.strokeColor = strokeColor
        self.stroleLineWidth = strokeLineWidth
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(foregroundColor)
                .frame(maxWidth: maxWidth,maxHeight: maxHeight)
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: roundedCornorRaduis)
                        .stroke(strokeColor, lineWidth: stroleLineWidth)
                )
        }
    }
}

@available(iOS 13.0.0, *)
public struct OutlineButton: View {
    var text: String
    var action: () -> Void
    
    var backgroundColor : Color
    var foregroundColor : Color
    var cornerRadius : CGFloat
    var roundedCornorRaduis : CGFloat
    var strokeColor : Color
    var stroKeLineWidth : CGFloat
    var maxWidth : CGFloat
    var maxHeight : CGFloat
    
    public init(text: String, action: @escaping () -> Void,backgroundColor: Color, foregroundColor: Color, cornorRaduis:CGFloat,roundedCornorRaduis:CGFloat,strokeColor: Color, strokeLineWidth:CGFloat,maxWidth:CGFloat,maxHeight:CGFloat) {
        self.text = text
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornorRaduis
        self.roundedCornorRaduis = roundedCornorRaduis
        self.strokeColor = strokeColor
        self.stroKeLineWidth = strokeLineWidth
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(foregroundColor)
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(strokeColor, lineWidth: stroKeLineWidth)
                )
        }
    }
}

@available(iOS 13.0.0, *)
public struct IconButton: View {
    var icon: Image
    var action: () -> Void
    var backgroundColor : Color
    var foregroundColor : Color
    var cornerRadius : CGFloat
    var roundedCornorRaduis : CGFloat
    var strokeColor : Color
    var stroleLineWidth : CGFloat
    
    public init(icon: Image, action: @escaping () -> Void, backgroundColor: Color, foregroundColor: Color, cornorRaduis: CGFloat, roundedCornorRaduis: CGFloat, strokeColor: Color, strokeLineWidth:CGFloat) {
        self.icon = icon
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornorRaduis
        self.roundedCornorRaduis = roundedCornorRaduis
        self.strokeColor = strokeColor
        self.stroleLineWidth = strokeLineWidth
    }
    
    public var body: some View {
        Button(action: action) {
            icon
                .foregroundColor(foregroundColor)
                .padding()
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: roundedCornorRaduis)
                        .stroke(strokeColor, lineWidth: stroleLineWidth)
                )
        }
    }
}
@available (iOS 13.0.0 ,*)
public struct GradientButton: View {
    var text: String
    var action: () -> Void
    var foregroundColor : Color
    var cornerRadius : CGFloat
    var linearGradientColor : [Color]
    var startPoint : UnitPoint
    var endPoint: UnitPoint
    var shadowColor : Color
    var shadowOffsetHorizontally : CGFloat
    var shadowOffsetVertically : CGFloat
    
    public init(text: String, action: @escaping () -> Void,foregroundColor:Color,cornorRaduis:CGFloat, linerGradientPoint:[Color],startPoint:UnitPoint, endPoint: UnitPoint, shadowColor: Color,shadowOffsetHorizontally:CGFloat,shadowOffsetVertically:CGFloat) {
        self.text = text
        self.action = action
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornorRaduis
        self.linearGradientColor = linerGradientPoint
        self.startPoint = startPoint
        self.endPoint = endPoint
        self.shadowColor = shadowColor
        self.shadowOffsetHorizontally = shadowOffsetHorizontally
        self.shadowOffsetVertically = shadowOffsetVertically
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(foregroundColor)
                .padding()
                .background(Capsule()
                    .fill(LinearGradient(colors: linearGradientColor, startPoint: startPoint, endPoint:endPoint))
                    .shadow(color: shadowColor, radius: cornerRadius, x:shadowOffsetHorizontally, y: shadowOffsetVertically)
                )
        }
    }
}
// MARK: - rotation button
@available(iOS 13.0.0,*)
public struct RotationButton: View {
    var text : String
    var action : () -> Void
    var maxWidth : UnitPoint
    var maxHeight : UnitPoint
    var fontSize : CGFloat
    var fontDesign : Font.Design
    var fontWeigt : Font.Weight
    var color: Color
    var cornerRaduis : CGFloat
    var strokColor : Color
    var strokeLineWidth : CGFloat
    var shadowColor : Color
    var shadowOpacity : CGFloat
    var shadowOffsetHorizontally : CGFloat
    var shadowOffsetVertically : CGFloat
    var foregroundColor : Color
    var rotationDegree : CGFloat
    var scaleEffect : CGFloat
    
    public init(text: String, action: @escaping () -> Void, maxWidth: UnitPoint, maxHeight: UnitPoint, fontSize: CGFloat, fontDesign: Font.Design, fontWeigt: Font.Weight, color: Color, cornerRaduis: CGFloat, strokColor: Color, strokeLineWidth: CGFloat, shadowColor: Color, shadowOpacity: CGFloat, shadowOffsetHorizontally: CGFloat, shadowOffsetVertically: CGFloat, foregroundColor: Color, rotationDegree: CGFloat, scaleEffect: CGFloat) {
        self.text = text
        self.action = action
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
        self.fontSize = fontSize
        self.fontDesign = fontDesign
        self.fontWeigt = fontWeigt
        self.color = color
        self.cornerRaduis = cornerRaduis
        self.strokColor = strokColor
        self.strokeLineWidth = strokeLineWidth
        self.shadowColor = shadowColor
        self.shadowOpacity = shadowOpacity
        self.shadowOffsetHorizontally = shadowOffsetHorizontally
        self.shadowOffsetVertically = shadowOffsetVertically
        self.foregroundColor = foregroundColor
        self.rotationDegree = rotationDegree
        self.scaleEffect = scaleEffect
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
            //                .font(.headline)
                .font(.system(size: fontSize, weight:fontWeigt, design: fontDesign))
                .padding()
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(RotatingButtonStyle(color: color, cornerRaduis: cornerRaduis, strokColor: strokColor, strokeLineWidth: strokeLineWidth, shadowColor: shadowColor, shadowOpacity: shadowOpacity, shadowOffsetHorizontally: shadowOffsetHorizontally, shadowOffsetVertically: shadowOffsetVertically, foregroundColor: foregroundColor, rotationDegree: rotationDegree, scaleEffect: scaleEffect))
    }
}

//MARK: - Bounc button
@available(iOS 13.0.0,*)
public struct BounceButton: View {
    @Binding var isPressed : Bool
    var text : String
    var alignment : VerticalAlignment
    var action : () -> Void
    var spaceBetweenTextAndImg : CGFloat
    var icon: Image
    var iconWidth : CGFloat
    var iconHeight : CGFloat
    var iconCornorRaduis : CGFloat
    var maxWidth : CGFloat
    var maxHeight : CGFloat
    var fontSize : CGFloat
    var fontDesign : Font.Design
    var fontWeigt : Font.Weight
    var gradientColor : [Color]
    var gradientStartPoint : UnitPoint
    var gradientEndPoint : UnitPoint
    var shadowColor : Color
    var shadowRaduis : CGFloat
    var shadowOffsetHorizontally : CGFloat
    var shadowOffsetVertically : CGFloat
    var cornerRaduis : CGFloat
    var strokColor : Color
    var strokeLineWidth : CGFloat
    var animationDuration: CGFloat
    var scaleOutEffect : CGFloat
    var scaleInEffect : CGFloat
    var foregroundColor : Color
    
    public init(isPressed: Binding<Bool>,text: String,alignment: VerticalAlignment,spaceBetweenTextAndImg : CGFloat,icon: Image,iconWidth : CGFloat,iconHeight : CGFloat,iconCornorRaduis:CGFloat,action: @escaping () -> Void, maxWidth: CGFloat, maxHeight: CGFloat, fontSize: CGFloat, fontDesign: Font.Design, fontWeigt: Font.Weight,gradientColor:[Color],gradientStartPoint: UnitPoint,gradientEndPoint: UnitPoint,color: Color, cornerRaduis: CGFloat, strokColor: Color, strokeLineWidth: CGFloat,animationDuration: CGFloat,shadowColor: Color,shadowRaduis:CGFloat,scaleOutEffect:CGFloat,scaleInEffect:CGFloat,shadowOffsetHorizontally: CGFloat, shadowOffsetVertically: CGFloat, foregroundColor: Color) {
        
        self._isPressed = isPressed
        self.text = text
        self.alignment = alignment
        self.spaceBetweenTextAndImg = spaceBetweenTextAndImg
        self.icon = icon
        self.iconWidth = iconWidth
        self.iconHeight = iconHeight
        self.iconCornorRaduis = iconCornorRaduis
        self.action = action
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
        self.fontSize = fontSize
        self.fontDesign = fontDesign
        self.fontWeigt = fontWeigt
        self.gradientColor = gradientColor
        self.gradientStartPoint = gradientStartPoint
        self.gradientEndPoint = gradientEndPoint
        self.shadowColor = shadowColor
        self.shadowRaduis = shadowRaduis
        self.shadowOffsetHorizontally = shadowOffsetHorizontally
        self.shadowOffsetVertically = shadowOffsetVertically
        self.animationDuration = animationDuration
        self.cornerRaduis = cornerRaduis
        self.strokColor = strokColor
        self.strokeLineWidth = strokeLineWidth
        self.scaleInEffect = scaleInEffect
        self.scaleOutEffect = scaleOutEffect
        self.foregroundColor = foregroundColor
    }
    public var body: some View {
        Button(action: action) {
            HStack(alignment: alignment, spacing: spaceBetweenTextAndImg) {
                Text(text)
                    .font(.system(size:fontSize, weight:fontWeigt, design:fontDesign))
                    .foregroundColor(foregroundColor)
                icon
                    .resizable()
                    .frame(maxWidth: iconWidth, maxHeight:iconHeight)
                    .cornerRadius(iconCornorRaduis)
            }
            .frame(maxWidth:maxWidth, maxHeight:maxHeight)
            .background(
                Capsule()
                    .fill(LinearGradient(colors:gradientColor, startPoint: gradientStartPoint, endPoint: gradientEndPoint))
                    .shadow(color: shadowColor, radius: shadowRaduis, x: shadowOffsetHorizontally, y: shadowOffsetVertically)
                    .overlay(
                        RoundedRectangle(cornerRadius:cornerRaduis)
                            .stroke(strokColor, lineWidth: strokeLineWidth)
                    )
            )
            .scaleEffect(isPressed ? scaleInEffect : scaleOutEffect)
            .animation(.easeInOut(duration: animationDuration), value: isPressed)
        }
        .buttonStyle(PlainButtonStyle())
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged({ _ in
                    withAnimation {
                        self.isPressed = true
                    }
                })
                .onEnded({ _ in
                    withAnimation {
                        self.isPressed = false
                    }
                })
        )
    }
}

