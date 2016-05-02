//
//  Painter.swift
//  Parrot
//
//  Created by Loc Nguyen on 2/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class Painter: NSObject {
    static let WidthHeightRatio: CGFloat = 1.55
    
    class func drawFrameNumber(frameNum: Int, inRect rect: NSRect) {
        switch frameNum {
        case 0:
            drawFrame0InRect(rect)
        case 1:
            drawFrame1InRect(rect)
        case 2:
            drawFrame2InRect(rect)
        case 3:
            drawFrame3InRect(rect)
        case 4:
            drawFrame4InRect(rect)
        case 5:
            drawFrame5InRect(rect)
        case 6:
            drawFrame6InRect(rect)
        case 7:
            drawFrame7InRect(rect)
        case 8:
            drawFrame8InRect(rect)
        case 9:
            drawFrame9InRect(rect)
        default:
            break
        }
    }
    
    class func imageSizeToFitRectSize(toFit: NSSize) -> NSSize {
        var res = NSZeroSize
        
        // try to fit width first
        res.width = toFit.width
        res.height = res.width / WidthHeightRatio
        
        // if height doesn't fit, try to fit height
        if res.height > toFit.height {
            res.height = toFit.height
            res.width = res.height * WidthHeightRatio
        }
        
        return res
    }
    
    class func drawFrame0InRect(rect: NSRect) {
        //// Color Declarations
        let fillColor = NSColor(calibratedRed: 0.985, green: 0.465, blue: 0.481, alpha: 1)
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.02151 + 0.5), frame.minY + floor(frame.height * 0.00001 + 0.48) + 0.02, floor(frame.width * 0.80489 + 0.11) - floor(frame.width * 0.02151 + 0.5) + 0.39, floor(frame.height * 0.93213 - 0.2) - floor(frame.height * 0.00001 + 0.48) + 0.68)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.31365 * printGroup.width, printGroup.minY + 0.42460 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.20534 * printGroup.width, printGroup.minY + 0.29509 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.72802 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.40717 * printGroup.width, printGroup.minY + 0.53641 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.35538 * printGroup.width, printGroup.minY + 1.00187 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.51831 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.89779 * printGroup.width, printGroup.minY + 0.98688 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.68324 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.94671 * printGroup.width, printGroup.minY + 0.34213 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.42460 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.94815 * printGroup.width, printGroup.minY + 0.38336 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.94527 * printGroup.width, printGroup.minY + 0.30089 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92225 * printGroup.width, printGroup.minY + 0.22765 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.31365 * printGroup.width, printGroup.minY + 0.42460 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.20534 * printGroup.width, printGroup.minY + 0.29509 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.72802 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.40717 * printGroup.width, printGroup.minY + 0.53641 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.35538 * printGroup.width, printGroup.minY + 1.00187 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.51831 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.89779 * printGroup.width, printGroup.minY + 0.98688 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.68324 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.94671 * printGroup.width, printGroup.minY + 0.34213 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.42460 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.94815 * printGroup.width, printGroup.minY + 0.38336 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.99851 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.94527 * printGroup.width, printGroup.minY + 0.30089 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92225 * printGroup.width, printGroup.minY + 0.22765 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.66982 + 0.1) + 0.4, printGroup.minY + floor(printGroup.height * 0.39867 + 0.17) + 0.33, floor(printGroup.width * 0.83125 + 0.4) - floor(printGroup.width * 0.66982 + 0.1) - 0.3, floor(printGroup.height * 0.84697 - 0.13) - floor(printGroup.height * 0.39867 + 0.17) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.66982 + 0.1) + 0.4, printGroup.minY + floor(printGroup.height * 0.39867 + 0.17) + 0.33, floor(printGroup.width * 0.83125 + 0.4) - floor(printGroup.width * 0.66982 + 0.1) - 0.3, floor(printGroup.height * 0.84697 - 0.13) - floor(printGroup.height * 0.39867 + 0.17) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.75487 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.64060 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.75487 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.73397 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.54723 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.75487 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.64060 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.75487 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.73397 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.54723 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.50542 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.66040 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.65227 * printGroup.width, printGroup.minY + 0.78965 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.66040 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.58003 * printGroup.width, printGroup.minY + 0.84730 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.75487 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.65227 * printGroup.width, printGroup.minY + 0.78965 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.73902 * printGroup.width, printGroup.minY + 0.80593 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.66040 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.88573 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.97910 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.79236 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.88573 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.97910 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.79236 * printGroup.width, printGroup.minY + 0.78987 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75055 * printGroup.width, printGroup.minY + 0.88817 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.90554 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89740 * printGroup.width, printGroup.minY + 0.78965 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.90554 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.82516 * printGroup.width, printGroup.minY + 0.84730 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.89740 * printGroup.width, printGroup.minY + 0.78965 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98415 * printGroup.width, printGroup.minY + 0.80593 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.90554 * printGroup.width, printGroup.minY + 0.88839 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.34079 * printGroup.width, printGroup.minY + 0.47537 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.58257 * printGroup.width, printGroup.minY + 0.24735 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.34079 * printGroup.width, printGroup.minY + 0.47537 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.40414 * printGroup.width, printGroup.minY + 0.24735 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame1InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor5 = NSColor(calibratedRed: 0.996, green: 0.812, blue: 0.465, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.02097 + 0.4) + 0.1, frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.75383 - 0.41) - floor(frame.width * 0.02097 + 0.4) + 0.81, floor(frame.height * 0.94745 + 0.26) - floor(frame.height * 0.00000 + 0.5) + 0.24)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.23053 * printGroup.width, printGroup.minY + 0.31762 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.11475 * printGroup.width, printGroup.minY + 0.19021 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.23185 * printGroup.width, printGroup.minY + 0.57748 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.25839 * printGroup.width, printGroup.minY + 0.34828 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.23108 * printGroup.width, printGroup.minY + 0.47672 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.58961 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.23323 * printGroup.width, printGroup.minY + 0.75920 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.30229 * printGroup.width, printGroup.minY + 1.00133 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.52610 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77109 * printGroup.width, printGroup.minY + 0.98709 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.68837 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.86306 * printGroup.width, printGroup.minY + 0.38798 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.43391 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.86460 * printGroup.width, printGroup.minY + 0.42855 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.86152 * printGroup.width, printGroup.minY + 0.34742 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.91849 * printGroup.width, printGroup.minY + 0.22396 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor5.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.23053 * printGroup.width, printGroup.minY + 0.31762 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.11475 * printGroup.width, printGroup.minY + 0.19021 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.23185 * printGroup.width, printGroup.minY + 0.57748 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.25839 * printGroup.width, printGroup.minY + 0.34828 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.23108 * printGroup.width, printGroup.minY + 0.47672 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.58961 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.23323 * printGroup.width, printGroup.minY + 0.75920 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.30229 * printGroup.width, printGroup.minY + 1.00133 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.52610 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77109 * printGroup.width, printGroup.minY + 0.98709 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.68837 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.86306 * printGroup.width, printGroup.minY + 0.38798 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.87875 * printGroup.width, printGroup.minY + 0.43391 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.86460 * printGroup.width, printGroup.minY + 0.42855 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.86152 * printGroup.width, printGroup.minY + 0.34742 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.91849 * printGroup.width, printGroup.minY + 0.22396 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.52742 + 0.45) + 0.05, printGroup.minY + floor(printGroup.height * 0.40841 - 0.4) + 0.9, floor(printGroup.width * 0.69998 - 0.25) - floor(printGroup.width * 0.52742 + 0.45) + 0.7, floor(printGroup.height * 0.84946 + 0.3) - floor(printGroup.height * 0.40841 - 0.4) - 0.7))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.52742 + 0.45) + 0.05, printGroup.minY + floor(printGroup.height * 0.40841 - 0.4) + 0.9, floor(printGroup.width * 0.69998 - 0.25) - floor(printGroup.width * 0.52742 + 0.45) + 0.7, floor(printGroup.height * 0.84946 + 0.3) - floor(printGroup.height * 0.40841 - 0.4) - 0.7))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.61831 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.49616 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.61831 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.59597 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.39636 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()//// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.61831 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.49616 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.61831 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.59597 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.39636 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.35167 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.51734 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.50864 * printGroup.width, printGroup.minY + 0.79305 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.51734 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.43142 * printGroup.width, printGroup.minY + 0.84977 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61831 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.50864 * printGroup.width, printGroup.minY + 0.79305 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.60138 * printGroup.width, printGroup.minY + 0.80907 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.51734 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.75819 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.85800 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.65839 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.75819 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.85800 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.65839 * printGroup.width, printGroup.minY + 0.79328 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.61370 * printGroup.width, printGroup.minY + 0.88998 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.77937 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.77067 * printGroup.width, printGroup.minY + 0.79305 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77937 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.69345 * printGroup.width, printGroup.minY + 0.84977 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77067 * printGroup.width, printGroup.minY + 0.79305 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.86341 * printGroup.width, printGroup.minY + 0.80907 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.77937 * printGroup.width, printGroup.minY + 0.89020 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.24256 * printGroup.width, printGroup.minY + 0.35961 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.43414 * printGroup.width, printGroup.minY + 0.25953 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24256 * printGroup.width, printGroup.minY + 0.35961 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.24340 * printGroup.width, printGroup.minY + 0.25953 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame2InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor6 = NSColor(calibratedRed: 0.133, green: 1, blue: 0.448, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.02097 + 0.4) + 0.1, frame.minY + floor(frame.height * 0.00041 + 0.05) + 0.45, floor(frame.width * 0.80319 - 0.03) - floor(frame.width * 0.02097 + 0.4) + 0.43, floor(frame.height * 0.97912 + 0.05) - floor(frame.height * 0.00041 + 0.05) + 0)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.11365 * printGroup.width, printGroup.minY + 0.29372 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00518 * printGroup.width, printGroup.minY + 0.17039 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.06363 * printGroup.width, printGroup.minY + 0.54712 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13975 * printGroup.width, printGroup.minY + 0.32340 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06291 * printGroup.width, printGroup.minY + 0.44958 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.40079 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06493 * printGroup.width, printGroup.minY + 0.72303 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.13161 * printGroup.width, printGroup.minY + 1.00128 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.51088 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.57082 * printGroup.width, printGroup.minY + 0.98750 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.66796 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.68794 * printGroup.width, printGroup.minY + 0.35667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.42163 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.68938 * printGroup.width, printGroup.minY + 0.39594 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.68650 * printGroup.width, printGroup.minY + 0.31740 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92363 * printGroup.width, printGroup.minY + 0.21681 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor6.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.11365 * printGroup.width, printGroup.minY + 0.29372 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00518 * printGroup.width, printGroup.minY + 0.17039 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.06363 * printGroup.width, printGroup.minY + 0.54712 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13975 * printGroup.width, printGroup.minY + 0.32340 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06291 * printGroup.width, printGroup.minY + 0.44958 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.40079 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06493 * printGroup.width, printGroup.minY + 0.72303 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.13161 * printGroup.width, printGroup.minY + 1.00128 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.51088 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.57082 * printGroup.width, printGroup.minY + 0.98750 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.66796 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.68794 * printGroup.width, printGroup.minY + 0.35667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.71085 * printGroup.width, printGroup.minY + 0.42163 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.68938 * printGroup.width, printGroup.minY + 0.39594 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.68650 * printGroup.width, printGroup.minY + 0.31740 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92363 * printGroup.width, printGroup.minY + 0.21681 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.34057 - 0.45) + 0.95, printGroup.minY + floor(printGroup.height * 0.38345 + 0.2) + 0.3, floor(printGroup.width * 0.50224 - 0.15) - floor(printGroup.width * 0.34057 - 0.45) - 0.3, floor(printGroup.height * 0.81041 - 0.1) - floor(printGroup.height * 0.38345 + 0.2) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.34057 - 0.45) + 0.95, printGroup.minY + floor(printGroup.height * 0.38345 + 0.2) + 0.3, floor(printGroup.width * 0.50224 - 0.15) - floor(printGroup.width * 0.34057 - 0.45) - 0.3, floor(printGroup.height * 0.81041 - 0.1) - floor(printGroup.height * 0.38345 + 0.2) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.42571 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.31127 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.42571 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.40478 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.21776 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.42571 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.31127 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.42571 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.40478 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.21776 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.17589 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.33111 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.32296 * printGroup.width, printGroup.minY + 0.75581 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.33111 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.25061 * printGroup.width, printGroup.minY + 0.81072 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.42571 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.32296 * printGroup.width, printGroup.minY + 0.75581 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.40984 * printGroup.width, printGroup.minY + 0.77131 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.33111 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.67121 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.55677 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.67121 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.65027 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46326 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.67121 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.55677 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.67121 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.65027 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46326 * printGroup.width, printGroup.minY + 0.75602 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.42139 * printGroup.width, printGroup.minY + 0.84963 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.57660 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.56845 * printGroup.width, printGroup.minY + 0.75581 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.57660 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.49611 * printGroup.width, printGroup.minY + 0.81072 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.67121 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.56845 * printGroup.width, printGroup.minY + 0.75581 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.65534 * printGroup.width, printGroup.minY + 0.77131 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.57660 * printGroup.width, printGroup.minY + 0.84985 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.11892 * printGroup.width, printGroup.minY + 0.31659 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34056 * printGroup.width, printGroup.minY + 0.18259 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.11892 * printGroup.width, printGroup.minY + 0.31659 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.16186 * printGroup.width, printGroup.minY + 0.18259 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame3InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor7 = NSColor(calibratedRed: 0.129, green: 1, blue: 0.999, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.05974 + 0.5), frame.minY + floor(frame.height * 0.00041 + 0.05) + 0.45, floor(frame.width * 0.83752 + 0.49) - floor(frame.width * 0.05974 + 0.5) + 0.01, floor(frame.height * 0.91986 + 0.05) - floor(frame.height * 0.00041 + 0.05) + 0)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.04609 * printGroup.width, printGroup.minY + 0.23867 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00611 * printGroup.width, printGroup.minY + 0.08538 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.00001 * printGroup.width, printGroup.minY + 0.48842 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06062 * printGroup.width, printGroup.minY + 0.28133 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00072 * printGroup.width, printGroup.minY + 0.38458 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.31490 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00131 * printGroup.width, printGroup.minY + 0.67567 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.04418 * printGroup.width, printGroup.minY + 1.00137 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.63438 * printGroup.width, printGroup.minY + 0.48413 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.48590 * printGroup.width, printGroup.minY + 0.98670 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.63438 * printGroup.width, printGroup.minY + 0.65134 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.61978 * printGroup.width, printGroup.minY + 0.36728 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.63115 * printGroup.width, printGroup.minY + 0.42239 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.62123 * printGroup.width, printGroup.minY + 0.40908 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.61833 * printGroup.width, printGroup.minY + 0.32548 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92320 * printGroup.width, printGroup.minY + 0.23078 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor7.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.04609 * printGroup.width, printGroup.minY + 0.23867 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00611 * printGroup.width, printGroup.minY + 0.08538 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.00001 * printGroup.width, printGroup.minY + 0.48842 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06062 * printGroup.width, printGroup.minY + 0.28133 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00072 * printGroup.width, printGroup.minY + 0.38458 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.31490 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00131 * printGroup.width, printGroup.minY + 0.67567 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.04418 * printGroup.width, printGroup.minY + 1.00137 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.63438 * printGroup.width, printGroup.minY + 0.48413 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.48590 * printGroup.width, printGroup.minY + 0.98670 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.63438 * printGroup.width, printGroup.minY + 0.65134 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61978 * printGroup.width, printGroup.minY + 0.36728 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.63115 * printGroup.width, printGroup.minY + 0.42239 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.62123 * printGroup.width, printGroup.minY + 0.40908 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.61833 * printGroup.width, printGroup.minY + 0.32548 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92320 * printGroup.width, printGroup.minY + 0.23078 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.05838 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.26198 + 0.4) + 0.1, printGroup.minY + floor(printGroup.height * 0.34844 + 0.5) + 0, floor(printGroup.width * 0.42457 - 0.3) - floor(printGroup.width * 0.26198 + 0.4) + 0.7, floor(printGroup.height * 0.80292 + 0.2) - floor(printGroup.height * 0.34844 + 0.5) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.26198 + 0.4) + 0.1, printGroup.minY + floor(printGroup.height * 0.34844 + 0.5) + 0, floor(printGroup.width * 0.42457 - 0.3) - floor(printGroup.width * 0.26198 + 0.4) + 0.7, floor(printGroup.height * 0.80292 + 0.2) - floor(printGroup.height * 0.34844 + 0.5) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.34761 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.23252 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.34761 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.32656 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13848 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        
        
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.34761 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.23252 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.34761 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.32656 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13848 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.09637 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.25247 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.24427 * printGroup.width, printGroup.minY + 0.74485 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.25247 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.17151 * printGroup.width, printGroup.minY + 0.80330 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34761 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24427 * printGroup.width, printGroup.minY + 0.74485 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33165 * printGroup.width, printGroup.minY + 0.76136 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.25247 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.59451 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.47942 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.59451 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.57346 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38537 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.59451 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.47942 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.59451 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.57346 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38537 * printGroup.width, printGroup.minY + 0.74508 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.34327 * printGroup.width, printGroup.minY + 0.84472 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.49937 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.49117 * printGroup.width, printGroup.minY + 0.74485 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.49937 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41841 * printGroup.width, printGroup.minY + 0.80330 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.59451 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.49117 * printGroup.width, printGroup.minY + 0.74485 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.57855 * printGroup.width, printGroup.minY + 0.76136 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.49937 * printGroup.width, printGroup.minY + 0.84495 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.04609 * printGroup.width, printGroup.minY + 0.23867 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.29273 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.04609 * printGroup.width, printGroup.minY + 0.23867 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.11301 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame4InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor8 = NSColor(calibratedRed: 0.402, green: 0.646, blue: 0.999, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.04070 + 0.36) + 0.14, frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.82915 - 0.5) - floor(frame.width * 0.04070 + 0.36) + 0.86, floor(frame.height * 0.93426 + 0.5) - floor(frame.height * 0.00000 + 0.5) + 0)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.03332 * printGroup.width, printGroup.minY + 0.26098 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.01375 * printGroup.width, printGroup.minY + 0.12785 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.00001 * printGroup.width, printGroup.minY + 0.49268 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.04807 * printGroup.width, printGroup.minY + 0.30272 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00071 * printGroup.width, printGroup.minY + 0.39050 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.32871 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00130 * printGroup.width, printGroup.minY + 0.67696 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06165 * printGroup.width, printGroup.minY + 1.00134 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.50000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.49740 * printGroup.width, printGroup.minY + 0.98691 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.66456 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.65602 * printGroup.width, printGroup.minY + 0.35494 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.40650 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.65745 * printGroup.width, printGroup.minY + 0.39608 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.65459 * printGroup.width, printGroup.minY + 0.31380 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.90302 * printGroup.width, printGroup.minY + 0.21705 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor8.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.03332 * printGroup.width, printGroup.minY + 0.26098 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.01375 * printGroup.width, printGroup.minY + 0.12785 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.00001 * printGroup.width, printGroup.minY + 0.49268 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.04807 * printGroup.width, printGroup.minY + 0.30272 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00071 * printGroup.width, printGroup.minY + 0.39050 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.32871 * printGroup.width, printGroup.minY + 1.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00130 * printGroup.width, printGroup.minY + 0.67696 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06165 * printGroup.width, printGroup.minY + 1.00134 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.50000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.49740 * printGroup.width, printGroup.minY + 0.98691 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.66456 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.65602 * printGroup.width, printGroup.minY + 0.35494 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.66208 * printGroup.width, printGroup.minY + 0.40650 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.65745 * printGroup.width, printGroup.minY + 0.39608 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.65459 * printGroup.width, printGroup.minY + 0.31380 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.90302 * printGroup.width, printGroup.minY + 0.21705 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.02262 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.25844 + 0.39) + 0.11, printGroup.minY + floor(printGroup.height * 0.35495 + 0.35) + 0.15, floor(printGroup.width * 0.41884 - 0.31) - floor(printGroup.width * 0.25844 + 0.39) + 0.7, floor(printGroup.height * 0.80223 + 0.05) - floor(printGroup.height * 0.35495 + 0.35) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.25844 + 0.39) + 0.11, printGroup.minY + floor(printGroup.height * 0.35495 + 0.35) + 0.15, floor(printGroup.width * 0.41884 - 0.31) - floor(printGroup.width * 0.25844 + 0.39) + 0.7, floor(printGroup.height * 0.80223 + 0.05) - floor(printGroup.height * 0.35495 + 0.35) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.34292 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.22938 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.34292 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.32215 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13661 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.34292 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.22938 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.34292 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.32215 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13661 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.09507 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.24906 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.24097 * printGroup.width, printGroup.minY + 0.74505 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24906 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.16919 * printGroup.width, printGroup.minY + 0.80257 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34292 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24097 * printGroup.width, printGroup.minY + 0.74505 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.32717 * printGroup.width, printGroup.minY + 0.76130 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.24906 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.58647 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.47294 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.58647 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.56571 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38017 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.58647 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.47294 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.58647 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.56571 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38017 * printGroup.width, printGroup.minY + 0.74527 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33863 * printGroup.width, printGroup.minY + 0.84334 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.49262 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.48453 * printGroup.width, printGroup.minY + 0.74505 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.49262 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41275 * printGroup.width, printGroup.minY + 0.80257 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.58647 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.48453 * printGroup.width, printGroup.minY + 0.74505 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.57073 * printGroup.width, printGroup.minY + 0.76130 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.49262 * printGroup.width, printGroup.minY + 0.84356 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.03855 * printGroup.width, printGroup.minY + 0.28494 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.31290 * printGroup.width, printGroup.minY + 0.12785 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.03855 * printGroup.width, printGroup.minY + 0.28494 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.13561 * printGroup.width, printGroup.minY + 0.12785 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame5InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor9 = NSColor(calibratedRed: 0.902, green: 0.442, blue: 0.999, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.05496 - 0.5) + 1, frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.80320 - 0.05) - floor(frame.width * 0.05496 - 0.5) - 0.45, floor(frame.height * 0.91452 - 0.18) - floor(frame.height * 0.00000 + 0.5) + 0.68)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.00837 * printGroup.width, printGroup.minY + 0.11681 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00804 * printGroup.width, printGroup.minY + 0.02329 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.04945 * printGroup.width, printGroup.minY + 0.19541 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.01297 * printGroup.width, printGroup.minY + 0.14304 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.03337 * printGroup.width, printGroup.minY + 0.16558 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.05264 * printGroup.width, printGroup.minY + 0.52952 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.07035 * printGroup.width, printGroup.minY + 0.23419 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.05189 * printGroup.width, printGroup.minY + 0.42513 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.42573 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.05400 * printGroup.width, printGroup.minY + 0.71778 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.14431 * printGroup.width, printGroup.minY + 1.00137 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.79033 * printGroup.width, printGroup.minY + 0.44245 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.60348 * printGroup.width, printGroup.minY + 0.98662 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.80630 * printGroup.width, printGroup.minY + 0.61555 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77117 * printGroup.width, printGroup.minY + 0.17718 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92016 * printGroup.width, printGroup.minY + 0.23203 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor9.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.00837 * printGroup.width, printGroup.minY + 0.11681 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.00804 * printGroup.width, printGroup.minY + 0.02329 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.04945 * printGroup.width, printGroup.minY + 0.19541 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.01297 * printGroup.width, printGroup.minY + 0.14304 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.03337 * printGroup.width, printGroup.minY + 0.16558 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.05264 * printGroup.width, printGroup.minY + 0.52952 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.07035 * printGroup.width, printGroup.minY + 0.23419 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.05189 * printGroup.width, printGroup.minY + 0.42513 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.42573 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.05400 * printGroup.width, printGroup.minY + 0.71778 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.14431 * printGroup.width, printGroup.minY + 1.00137 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.79033 * printGroup.width, printGroup.minY + 0.44245 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.60348 * printGroup.width, printGroup.minY + 0.98662 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.80630 * printGroup.width, printGroup.minY + 0.61555 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77117 * printGroup.width, printGroup.minY + 0.17718 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.92016 * printGroup.width, printGroup.minY + 0.23203 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00474 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.37599 - 0.45) + 0.95, printGroup.minY + floor(printGroup.height * 0.31417 + 0.2) + 0.3, floor(printGroup.width * 0.54501 - 0.15) - floor(printGroup.width * 0.37599 - 0.45) - 0.3, floor(printGroup.height * 0.77110 - 0.1) - floor(printGroup.height * 0.31417 + 0.2) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.37599 - 0.45) + 0.95, printGroup.minY + floor(printGroup.height * 0.31417 + 0.2) + 0.3, floor(printGroup.width * 0.54501 - 0.15) - floor(printGroup.width * 0.37599 - 0.45) - 0.3, floor(printGroup.height * 0.77110 - 0.1) - floor(printGroup.height * 0.31417 + 0.2) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.46502 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34538 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46502 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.44313 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24762 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.46502 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.34538 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46502 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.44313 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24762 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.20385 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.36611 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.35759 * printGroup.width, printGroup.minY + 0.71271 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.36611 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.28196 * printGroup.width, printGroup.minY + 0.77147 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.46502 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.35759 * printGroup.width, printGroup.minY + 0.71271 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.44843 * printGroup.width, printGroup.minY + 0.72930 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.36611 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.72166 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.60202 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.72166 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.69978 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.50427 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.72166 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.60202 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.72166 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.69978 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.50427 * printGroup.width, printGroup.minY + 0.71293 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.46050 * printGroup.width, printGroup.minY + 0.81312 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.62276 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61424 * printGroup.width, printGroup.minY + 0.71271 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.62276 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.53861 * printGroup.width, printGroup.minY + 0.77147 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.72166 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.61424 * printGroup.width, printGroup.minY + 0.71271 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.70507 * printGroup.width, printGroup.minY + 0.72930 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.62276 * printGroup.width, printGroup.minY + 0.81335 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.05924 * printGroup.width, printGroup.minY + 0.26621 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.38436 * printGroup.width, printGroup.minY + 0.05569 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.05924 * printGroup.width, printGroup.minY + 0.26621 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.19754 * printGroup.width, printGroup.minY + 0.05569 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame6InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor10 = NSColor(calibratedRed: 0.989, green: 0.438, blue: 0.999, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.05400 + 0.1) + 0.4, frame.minY + floor(frame.height * 0.00041 + 0.05) + 0.45, floor(frame.width * 0.73445 + 0.04) - floor(frame.width * 0.05400 + 0.1) + 0.07, floor(frame.height * 0.88436 + 0.39) - floor(frame.height * 0.00041 + 0.05) - 0.34)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.03667 * printGroup.width, printGroup.minY + 0.13464 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.01081 * printGroup.width, printGroup.minY + 0.05784 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.13836 * printGroup.width, printGroup.minY + 0.30452 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06894 * printGroup.width, printGroup.minY + 0.18682 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.10575 * printGroup.width, printGroup.minY + 0.24759 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.14818 * printGroup.width, printGroup.minY + 0.59147 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.16135 * printGroup.width, printGroup.minY + 0.34464 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.14735 * printGroup.width, printGroup.minY + 0.48347 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.65545 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.14967 * printGroup.width, printGroup.minY + 0.78624 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.34600 * printGroup.width, printGroup.minY + 1.00142 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.99872 * printGroup.width, printGroup.minY + 0.38407 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.85091 * printGroup.width, printGroup.minY + 0.98616 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 1.01628 * printGroup.width, printGroup.minY + 0.56315 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.97227 * printGroup.width, printGroup.minY + 0.00697 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.97765 * printGroup.width, printGroup.minY + 0.10963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.88448 * printGroup.width, printGroup.minY + 0.24703 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor10.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.03667 * printGroup.width, printGroup.minY + 0.13464 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + -0.01081 * printGroup.width, printGroup.minY + 0.05784 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.13836 * printGroup.width, printGroup.minY + 0.30452 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06894 * printGroup.width, printGroup.minY + 0.18682 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.10575 * printGroup.width, printGroup.minY + 0.24759 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.14818 * printGroup.width, printGroup.minY + 0.59147 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.16135 * printGroup.width, printGroup.minY + 0.34464 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.14735 * printGroup.width, printGroup.minY + 0.48347 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.65545 * printGroup.width, printGroup.minY + 0.99999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.14967 * printGroup.width, printGroup.minY + 0.78624 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.34600 * printGroup.width, printGroup.minY + 1.00142 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.99872 * printGroup.width, printGroup.minY + 0.38407 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.85091 * printGroup.width, printGroup.minY + 0.98616 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 1.01628 * printGroup.width, printGroup.minY + 0.56315 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.97227 * printGroup.width, printGroup.minY + 0.00697 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.97765 * printGroup.width, printGroup.minY + 0.10963 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.88448 * printGroup.width, printGroup.minY + 0.24703 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00141 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.60896 - 0.15) + 0.65, printGroup.minY + floor(printGroup.height * 0.29236 + 0.4) + 0.1, floor(printGroup.width * 0.79482 + 0.15) - floor(printGroup.width * 0.60896 - 0.15) - 0.3, floor(printGroup.height * 0.76509 + 0.1) - floor(printGroup.height * 0.29236 + 0.4) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.60896 - 0.15) + 0.65, printGroup.minY + floor(printGroup.height * 0.29236 + 0.4) + 0.1, floor(printGroup.width * 0.79482 + 0.15) - floor(printGroup.width * 0.60896 - 0.15) - 0.3, floor(printGroup.height * 0.76509 + 0.1) - floor(printGroup.height * 0.29236 + 0.4) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.70688 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.57532 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.70688 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.68281 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46782 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.70688 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.57532 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.70688 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.68281 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.46782 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41969 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.59812 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.58875 * printGroup.width, printGroup.minY + 0.70466 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.59812 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.50558 * printGroup.width, printGroup.minY + 0.76545 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.70688 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.58875 * printGroup.width, printGroup.minY + 0.70466 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.68863 * printGroup.width, printGroup.minY + 0.72182 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.59812 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 0.98910 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.85754 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.98910 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96503 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.75004 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 0.98910 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.85754 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.98910 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96503 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.75004 * printGroup.width, printGroup.minY + 0.70489 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.70191 * printGroup.width, printGroup.minY + 0.80854 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.87097 * printGroup.width, printGroup.minY + 0.70466 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.78780 * printGroup.width, printGroup.minY + 0.76545 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.98910 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.87097 * printGroup.width, printGroup.minY + 0.70466 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.97085 * printGroup.width, printGroup.minY + 0.72182 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.88034 * printGroup.width, printGroup.minY + 0.80877 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.14818 * printGroup.width, printGroup.minY + 0.32828 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.51866 * printGroup.width, printGroup.minY + 0.07054 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.14818 * printGroup.width, printGroup.minY + 0.32828 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.31322 * printGroup.width, printGroup.minY + 0.07054 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame7InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor11 = NSColor(calibratedRed: 0.987, green: 0.281, blue: 0.984, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.06093 + 0.5), frame.minY + floor(frame.height * 0.00041 + 0.05) + 0.45, floor(frame.width * 0.88113 + 0.5) - floor(frame.width * 0.06093 + 0.5) + 0, floor(frame.height * 0.89773 - 0.05) - floor(frame.height * 0.00041 + 0.05) + 0.11)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.06485 * printGroup.width, printGroup.minY + 0.13239 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00399 * printGroup.width, printGroup.minY + 0.05484 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.07087 * printGroup.width, printGroup.minY + 0.14009 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06685 * printGroup.width, printGroup.minY + 0.13493 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06886 * printGroup.width, printGroup.minY + 0.13750 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.23744 * printGroup.width, printGroup.minY + 0.43442 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13784 * printGroup.width, printGroup.minY + 0.22633 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.21273 * printGroup.width, printGroup.minY + 0.33838 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.68466 * printGroup.width, printGroup.minY + 0.99989 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.29425 * printGroup.width, printGroup.minY + 0.65524 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41660 * printGroup.width, printGroup.minY + 1.00001 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.37209 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.93661 * printGroup.width, printGroup.minY + 1.00815 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.54342 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.95411 * printGroup.width, printGroup.minY + 0.01341 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.27474 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96105 * printGroup.width, printGroup.minY + 0.24971 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor11.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.06485 * printGroup.width, printGroup.minY + 0.13239 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00399 * printGroup.width, printGroup.minY + 0.05484 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.07087 * printGroup.width, printGroup.minY + 0.14009 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.06685 * printGroup.width, printGroup.minY + 0.13493 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.06886 * printGroup.width, printGroup.minY + 0.13750 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.23744 * printGroup.width, printGroup.minY + 0.43442 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13784 * printGroup.width, printGroup.minY + 0.22633 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.21273 * printGroup.width, printGroup.minY + 0.33838 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.68466 * printGroup.width, printGroup.minY + 0.99989 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.29425 * printGroup.width, printGroup.minY + 0.65524 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.41660 * printGroup.width, printGroup.minY + 1.00001 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.37209 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.93661 * printGroup.width, printGroup.minY + 1.00815 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.54342 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.95411 * printGroup.width, printGroup.minY + 0.01341 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.99170 * printGroup.width, printGroup.minY + 0.27474 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96105 * printGroup.width, printGroup.minY + 0.24971 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.68467 + 0.45) + 0.05, printGroup.minY + floor(printGroup.height * 0.29817 - 0.45) + 0.95, floor(printGroup.width * 0.83885 - 0.25) - floor(printGroup.width * 0.68467 + 0.45) + 0.7, floor(printGroup.height * 0.76385 + 0.25) - floor(printGroup.height * 0.29817 - 0.45) - 0.7))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.68467 + 0.45) + 0.05, printGroup.minY + floor(printGroup.height * 0.29817 - 0.45) + 0.95, floor(printGroup.width * 0.83885 - 0.25) - floor(printGroup.width * 0.68467 + 0.45) + 0.7, floor(printGroup.height * 0.76385 + 0.25) - floor(printGroup.height * 0.29817 - 0.45) - 0.7))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.76587 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.65672 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.76587 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.74590 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.56755 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.76587 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.65672 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.76587 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.74590 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.56755 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.52761 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.67564 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.66787 * printGroup.width, printGroup.minY + 0.70433 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.67564 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.59887 * printGroup.width, printGroup.minY + 0.76422 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.76587 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.66787 * printGroup.width, printGroup.minY + 0.70433 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75073 * printGroup.width, printGroup.minY + 0.72125 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.67564 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89086 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98003 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.80168 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89086 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98003 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.80168 * printGroup.width, printGroup.minY + 0.70456 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76174 * printGroup.width, printGroup.minY + 0.80667 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.90977 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.90200 * printGroup.width, printGroup.minY + 0.70433 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.90977 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.83300 * printGroup.width, printGroup.minY + 0.76422 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.90200 * printGroup.width, printGroup.minY + 0.70433 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98486 * printGroup.width, printGroup.minY + 0.72125 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.90977 * printGroup.width, printGroup.minY + 0.80690 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.24398 * printGroup.width, printGroup.minY + 0.43681 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.61981 * printGroup.width, printGroup.minY + 0.07326 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.24398 * printGroup.width, printGroup.minY + 0.43681 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.30954 * printGroup.width, printGroup.minY + 0.07326 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame8InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor12 = NSColor(calibratedRed: 0.988, green: 0.306, blue: 0.673, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.07288 + 0.5), frame.minY + floor(frame.height * 0.00000 + 0.5), floor(frame.width * 0.95849 - 0.01) - floor(frame.width * 0.07288 + 0.5) + 0.51, floor(frame.height * 0.90516 - 0.07) - floor(frame.height * 0.00000 + 0.5) + 0.57)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.05015 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00809 * printGroup.width, printGroup.minY + 0.07672 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.29758 * printGroup.width, printGroup.minY + 0.43931 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13161 * printGroup.width, printGroup.minY + 0.23296 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.24265 * printGroup.width, printGroup.minY + 0.36285 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.71177 * printGroup.width, printGroup.minY + 0.99988 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38031 * printGroup.width, printGroup.minY + 0.55446 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.38214 * printGroup.width, printGroup.minY + 1.00181 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.42861 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.94512 * printGroup.width, printGroup.minY + 1.00806 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.59846 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.91197 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.33211 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.91840 * printGroup.width, printGroup.minY + 0.23425 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor12.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.05015 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00809 * printGroup.width, printGroup.minY + 0.07672 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.29758 * printGroup.width, printGroup.minY + 0.43931 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.13161 * printGroup.width, printGroup.minY + 0.23296 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.24265 * printGroup.width, printGroup.minY + 0.36285 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.71177 * printGroup.width, printGroup.minY + 0.99988 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.38031 * printGroup.width, printGroup.minY + 0.55446 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.38214 * printGroup.width, printGroup.minY + 1.00181 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.42861 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.94512 * printGroup.width, printGroup.minY + 1.00806 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.59846 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.91197 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.96323 * printGroup.width, printGroup.minY + 0.33211 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.91840 * printGroup.width, printGroup.minY + 0.23425 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.70796 - 0.05) + 0.55, printGroup.minY + floor(printGroup.height * 0.35128 + 0.1) + 0.4, floor(printGroup.width * 0.85076 + 0.25) - floor(printGroup.width * 0.70796 - 0.05) - 0.3, floor(printGroup.height * 0.81293 - 0.2) - floor(printGroup.height * 0.35128 + 0.1) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.70796 - 0.05) + 0.55, printGroup.minY + floor(printGroup.height * 0.35128 + 0.1) + 0.4, floor(printGroup.width * 0.85076 + 0.25) - floor(printGroup.width * 0.70796 - 0.05) - 0.3, floor(printGroup.height * 0.81293 - 0.2) - floor(printGroup.height * 0.35128 + 0.1) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.78316 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.68208 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.78316 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76467 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.59949 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.78316 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.68208 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.78316 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76467 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.59949 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.56251 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.69960 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.69240 * printGroup.width, printGroup.minY + 0.75394 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.69960 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.62850 * printGroup.width, printGroup.minY + 0.81331 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.78316 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.69240 * printGroup.width, printGroup.minY + 0.75394 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76914 * printGroup.width, printGroup.minY + 0.77070 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.69960 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89892 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98151 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.81633 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89892 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98151 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.81633 * printGroup.width, printGroup.minY + 0.75417 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.77934 * printGroup.width, printGroup.minY + 0.85538 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.91644 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.90924 * printGroup.width, printGroup.minY + 0.75394 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.91644 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.84534 * printGroup.width, printGroup.minY + 0.81331 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.90924 * printGroup.width, printGroup.minY + 0.75394 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98598 * printGroup.width, printGroup.minY + 0.77070 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.91644 * printGroup.width, printGroup.minY + 0.85562 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.31376 * printGroup.width, printGroup.minY + 0.44168 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.62597 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.31376 * printGroup.width, printGroup.minY + 0.44168 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33862 * printGroup.width, printGroup.minY + 0.12991 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
    
    class func drawFrame9InRect(rect: NSRect) {
        //// Color Declarations
        let strokeColor2 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        let fillColor2 = NSColor(calibratedRed: 0.382, green: 0.486, blue: 0.342, alpha: 1)
        let fillColor3 = NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 1)
        let fillColor13 = NSColor(calibratedRed: 0.988, green: 0.322, blue: 0.351, alpha: 1)
        let fillColor4 = NSColor(calibratedRed: 0, green: 0, blue: 0, alpha: 1)
        
        //// Variable Declarations
        let mainLineWidth: CGFloat = rect.size.height / 23.50
        let eyeLineWidth: CGFloat = rect.size.height / 77.0
        
        //// Frames
        let frame = NSMakeRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
        
        //// Subframes
        let printGroup: NSRect = NSMakeRect(frame.minX + floor(frame.width * 0.05137 + 0.5), frame.minY + floor(frame.height * 0.00041 + 0.05) + 0.45, floor(frame.width * 0.89462 - 0.09) - floor(frame.width * 0.05137 + 0.5) + 0.59, floor(frame.height * 0.88889 + 0.5) - floor(frame.height * 0.00041 + 0.05) - 0.45)
        
        
        //// Print Group
        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.06854 * printGroup.width, printGroup.minY + 0.14369 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00894 * printGroup.width, printGroup.minY + 0.06246 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.33066 * printGroup.width, printGroup.minY + 0.53890 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.14242 * printGroup.width, printGroup.minY + 0.24440 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.27497 * printGroup.width, printGroup.minY + 0.46370 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.68442 * printGroup.width, printGroup.minY + 0.99988 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.41755 * printGroup.width, printGroup.minY + 0.65622 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33823 * printGroup.width, printGroup.minY + 1.00184 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.41999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.92949 * printGroup.width, printGroup.minY + 1.00821 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.59302 * printGroup.height))
        bezierPath.curveToPoint(NSMakePoint(printGroup.minX + 0.92949 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.32167 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.93624 * printGroup.width, printGroup.minY + 0.23865 * printGroup.height))
        bezierPath.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezierPath.closePath()
        fillColor13.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.06854 * printGroup.width, printGroup.minY + 0.14369 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.00894 * printGroup.width, printGroup.minY + 0.06246 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.33066 * printGroup.width, printGroup.minY + 0.53890 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.14242 * printGroup.width, printGroup.minY + 0.24440 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.27497 * printGroup.width, printGroup.minY + 0.46370 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.68442 * printGroup.width, printGroup.minY + 0.99988 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.41755 * printGroup.width, printGroup.minY + 0.65622 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.33823 * printGroup.width, printGroup.minY + 1.00184 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.41999 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.92949 * printGroup.width, printGroup.minY + 1.00821 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.59302 * printGroup.height))
        bezier2Path.curveToPoint(NSMakePoint(printGroup.minX + 0.92949 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.97479 * printGroup.width, printGroup.minY + 0.32167 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.93624 * printGroup.width, printGroup.minY + 0.23865 * printGroup.height))
        bezier2Path.lineToPoint(NSMakePoint(printGroup.minX + 0.00000 * printGroup.width, printGroup.minY + 0.00000 * printGroup.height))
        bezier2Path.closePath()
        strokeColor2.setStroke()
        bezier2Path.lineWidth = mainLineWidth
        bezier2Path.stroke()
        
        
        //// Oval Drawing
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.69326 - 0.1) + 0.6, printGroup.minY + floor(printGroup.height * 0.33823 - 0.05) + 0.55, floor(printGroup.width * 0.84323 + 0.2) - floor(printGroup.width * 0.69326 - 0.1) - 0.3, floor(printGroup.height * 0.80856 - 0.35) - floor(printGroup.height * 0.33823 - 0.05) + 0.3))
        fillColor2.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = NSBezierPath(ovalInRect: NSMakeRect(printGroup.minX + floor(printGroup.width * 0.69326 - 0.1) + 0.6, printGroup.minY + floor(printGroup.height * 0.33823 - 0.05) + 0.55, floor(printGroup.width * 0.84323 + 0.2) - floor(printGroup.width * 0.69326 - 0.1) - 0.3, floor(printGroup.height * 0.80856 - 0.35) - floor(printGroup.height * 0.33823 - 0.05) + 0.3))
        strokeColor2.setStroke()
        oval2Path.lineWidth = mainLineWidth
        oval2Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier3Path.lineToPoint(NSMakePoint(printGroup.minX + 0.77227 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.66611 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77227 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75285 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height))
        bezier3Path.curveToPoint(NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.57937 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier3Path.closePath()
        fillColor3.setFill()
        bezier3Path.fill()
        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.moveToPoint(NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier4Path.lineToPoint(NSMakePoint(printGroup.minX + 0.77227 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.66611 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.77227 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75285 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height))
        bezier4Path.curveToPoint(NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.57937 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.54053 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier4Path.closePath()
        strokeColor2.setStroke()
        bezier4Path.lineWidth = eyeLineWidth
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.moveToPoint(NSMakePoint(printGroup.minX + 0.68451 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.67695 * printGroup.width, printGroup.minY + 0.74843 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.68451 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.60984 * printGroup.width, printGroup.minY + 0.80891 * printGroup.height))
        bezier5Path.curveToPoint(NSMakePoint(printGroup.minX + 0.77227 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.67695 * printGroup.width, printGroup.minY + 0.74843 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.75755 * printGroup.width, printGroup.minY + 0.76551 * printGroup.height))
        bezier5Path.lineToPoint(NSMakePoint(printGroup.minX + 0.68451 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height))
        bezier5Path.closePath()
        fillColor4.setFill()
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.moveToPoint(NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier6Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89384 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98058 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height))
        bezier6Path.curveToPoint(NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.80710 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier6Path.closePath()
        fillColor3.setFill()
        bezier6Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.moveToPoint(NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier7Path.lineToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.89384 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98058 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height))
        bezier7Path.curveToPoint(NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.80710 * printGroup.width, printGroup.minY + 0.74866 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.76826 * printGroup.width, printGroup.minY + 0.85178 * printGroup.height))
        bezier7Path.closePath()
        strokeColor2.setStroke()
        bezier7Path.lineWidth = eyeLineWidth
        bezier7Path.stroke()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = NSBezierPath()
        bezier8Path.moveToPoint(NSMakePoint(printGroup.minX + 0.91224 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 0.90468 * printGroup.width, printGroup.minY + 0.74843 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.91224 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.83757 * printGroup.width, printGroup.minY + 0.80891 * printGroup.height))
        bezier8Path.curveToPoint(NSMakePoint(printGroup.minX + 1.00000 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.90468 * printGroup.width, printGroup.minY + 0.74843 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.98528 * printGroup.width, printGroup.minY + 0.76551 * printGroup.height))
        bezier8Path.lineToPoint(NSMakePoint(printGroup.minX + 0.91224 * printGroup.width, printGroup.minY + 0.85202 * printGroup.height))
        bezier8Path.closePath()
        fillColor4.setFill()
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = NSBezierPath()
        bezier9Path.moveToPoint(NSMakePoint(printGroup.minX + 0.35339 * printGroup.width, printGroup.minY + 0.58322 * printGroup.height))
        bezier9Path.curveToPoint(NSMakePoint(printGroup.minX + 0.62058 * printGroup.width, printGroup.minY + 0.16570 * printGroup.height), controlPoint1: NSMakePoint(printGroup.minX + 0.35339 * printGroup.width, printGroup.minY + 0.58322 * printGroup.height), controlPoint2: NSMakePoint(printGroup.minX + 0.31879 * printGroup.width, printGroup.minY + 0.16570 * printGroup.height))
        bezier9Path.lineCapStyle = NSLineCapStyle.RoundLineCapStyle
        strokeColor2.setStroke()
        bezier9Path.lineWidth = mainLineWidth
        bezier9Path.stroke()
    }
}
