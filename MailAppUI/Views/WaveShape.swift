//
//  WaveShape.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct WaveShape: Shape {
    
    var waveWidth: CGFloat
    var animatableData: CGFloat {
        get { waveWidth }
        set { waveWidth = newValue }
    }
    var isLeft: Bool

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let height = rect.height
        let width = rect.width
        let paddingValue: CGFloat = 10
        
        if isLeft {
            path.move(to: CGPoint(x: 0, y: 0))
            
            if waveWidth > paddingValue {
                let toPoint1 = CGPoint(x: waveWidth - paddingValue, y: height/2)
                let controlPoint1 = CGPoint(x: 0, y: 30)
                let controlPoint2 = CGPoint(x: waveWidth - paddingValue, y: 20)
                
                let toPoint2 = CGPoint(x: 0, y: height)
                let controlPoint3 = CGPoint(x: waveWidth - paddingValue, y: height - 20)
                let controlPoint4 = CGPoint(x: 0, y: height - 30)
                
                path.addCurve(to: toPoint1, control1: controlPoint1, control2: controlPoint2)
                path.addCurve(to: toPoint2, control1: controlPoint3, control2: controlPoint4)
            }

            path.addLine(to: CGPoint(x: 0, y: 0))
        } else {
            path.move(to: CGPoint(x: width, y: 0))
            if waveWidth < -paddingValue {
                let toPoint1 = CGPoint(x: width + waveWidth + paddingValue, y: height/2)
                let controlPoint1 = CGPoint(x: width, y: 30)
                let controlPoint2 = CGPoint(x: width + waveWidth + paddingValue, y: 20)
                
                let toPoint2 = CGPoint(x: width, y: height)
                let controlPoint3 = CGPoint(x: width + waveWidth + paddingValue, y: height - 20)
                let controlPoint4 = CGPoint(x: width, y: height - 30)
                
                path.addCurve(to: toPoint1, control1: controlPoint1, control2: controlPoint2)
                path.addCurve(to: toPoint2, control1: controlPoint3, control2: controlPoint4)
            }
            path.addLine(to: CGPoint(x: width, y: 0))
        }
        return path
    }
}
