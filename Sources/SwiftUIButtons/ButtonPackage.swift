//
//  ButtonPackage.swift
//
//
//  Created by Sonoma on 24/06/24.
//

import Foundation
import SwiftUI

@available(iOS 13.0.0, *)
public struct ButtonPackage {

//    public static func primaryButton(text: String, backGroundColor: Color , foreGroundColor: Color , cornorRaduis:CGFloat, action: @escaping () -> Void) -> some View {
//        PrimaryButton(text: text, backgroundColor: backGroundColor , foregroundColor: foreGroundColor, cornorRaduis: cornorRaduis, action: action)
//    }
//    
//    public static func secondaryButton(text: String,foreGroundColor: Color,backGroundColor: Color,cornorRaduis:CGFloat,roundedCornorRaduis:CGFloat,strokeColor:Color,strokeLineWidth:CGFloat, action: @escaping () -> Void) -> some View {
//        SecondaryButton(text: text, foregroundColor: foreGroundColor, backgroundColor: backGroundColor, cornorRaduis: cornorRaduis, roundedCornorRaduis: roundedCornorRaduis, strokeColor: strokeColor, strokeLineWidth: strokeLineWidth, action: action)
//    }
//    
//    public static func outlineButton(text: String, action: @escaping () -> Void,backGroundColor:Color,foreGroundColor:Color,conorRaduis:CGFloat,roundedCornorRaduis:CGFloat,strokeColor:Color,strokeLineWidth:CGFloat) -> some View {
//        OutlineButton(text: text, action: action, backgroundColor: backGroundColor, foregroundColor: foreGroundColor, cornorRaduis: conorRaduis, roundedCornorRaduis: roundedCornorRaduis, strokeColor: strokeColor, strokeLineWidth: strokeLineWidth)
//    }
    
    public static func iconButton(icon: Image,  action: @escaping () -> Void ,backgroundColor:Color,foregroundColor:Color,cornorRaduis:CGFloat,roundedCornorRaduis:CGFloat,strokeColor:Color,strokeLineWidth:CGFloat) -> some View {
        IconButton(icon: icon, action: action, backgroundColor: backgroundColor, foregroundColor: foregroundColor, cornorRaduis: cornorRaduis, roundedCornorRaduis: roundedCornorRaduis, strokeColor: strokeColor, strokeLineWidth: strokeLineWidth)
    }
    
//    public static func gradientBottomLeftToRight(text:String,backGroundColor:Color,foreGroundColor:Color,cornorRaduis:CGFloat,action: @escaping ()-> Void, linerGradintColor:[Color],startPoint:UnitPoint,endPoint:UnitPoint,shadowColor:Color,shadowoffsetHorizontally:CGFloat,shadowoffsetVertically:CGFloat){
//        GradientButton(text: text, action: action, foregroundColor: foreGroundColor, cornorRaduis: cornorRaduis, linerGradientPoint: linerGradintColor, startPoint: startPoint, endPoint: endPoint, shadowColor: shadowColor, shadowOffsetHorizontally: shadowoffsetHorizontally, shadowOffsetVertically: shadowoffsetVertically)
//    }
}
