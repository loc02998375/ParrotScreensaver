//
//  BasicRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 30/04/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class BasicRoutine: SingleParrotRoutine {    
    override internal func drawNextFrame(screenSize: NSSize, screenScale: CGFloat) {
        var rect = NSZeroRect
        rect.size = Painter.imageSizeToFitRectSize(screenSize)
        rect.origin.x = (screenSize.width - rect.size.width) / 2.0
        rect.origin.y = screenSize.height - rect.size.height
        
        Painter.drawFrameNumber(mgr.getCurrentFrameAndIncrementCount(true), inRect: rect)
    }
}
