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
    public init(text: String,backgroundColor:Color,foregroundColor:Color, cornorRaduis: CGFloat , action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornorRaduis
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(foregroundColor)
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
    public init(text: String, foregroundColor: Color, backgroundColor: Color , cornorRaduis:CGFloat, roundedCornorRaduis:CGFloat, strokeColor : Color,strokeLineWidth:CGFloat, action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornorRaduis
        self.roundedCornorRaduis = roundedCornorRaduis
        self.strokeColor = strokeColor
        self.stroleLineWidth = strokeLineWidth
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
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

@available(iOS 13.0.0, *)
public struct OutlineButton: View {
    var text: String
    var action: () -> Void
    
    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.red)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.blue, lineWidth: 1)
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
    
    @available (iOS 13.0.0 ,*)
    public struct GradientButton: View {
        
        var text: String
        var action: () -> Void
        
        public init(text: String, action: @escaping () -> Void) {
            self.text = text
            self.action = action
        }

        public var body: some View {
            Button(action: action) {
                Text(text)
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.blue, lineWidth: 1)
                    )
            }
        }
            
//            Button(action: {
//                 
//            }, label: {
//                Text("Male")
////                    .font(.system(size: 18, type: .medium))
//                    .foregroundColor(Color("WhiteColor"))
//                    .frame(maxWidth: .infinity, maxHeight: 70)
//            })
//            .padding()
//            .background(
//                Capsule()
//                    .fill(LinearGradient(colors: [Color("PurpleColor"),Color("VioletColor")], startPoint: .leading, endPoint: .trailing))
//                    .shadow(color: Color("WhiteColor"), radius: 2, x: 0, y: 2)
//            )
        
    }
}
