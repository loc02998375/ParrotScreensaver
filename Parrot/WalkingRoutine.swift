//
//  BasicWalkingRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 1/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class WalkingRoutine: SingleParrotRoutine {
    private let NumTraverse = 3
    private var xDelta: CGFloat?
    
    override init() {
        super.init()
        
        repeatCount = 14
    }
    
    override internal func drawNextFrame(screenSize: NSSize, screenScale: CGFloat) {
        // calculate delta
        let imgSize = Painter.imageSizeToFitRectSize(screenSize)
        let distancePerTraverse = screenSize.width + imgSize.width
        if xDelta == nil {
            xDelta = distancePerTraverse * CGFloat(NumTraverse) / CGFloat(repeatCount * ParrotManager.FrameCount)
        }
        
        // get image to draw
        let currentFrameNum = mgr.getCurrentFrameAndIncrementCount(true)
        
        // prepare rect to draw in
        //
        var rect = NSZeroRect
        rect.size = imgSize
        rect.origin.y = screenSize.height - rect.size.height
        
        // calculate start X
        let startX = (screenSize.width - rect.size.width) / 2.0
        rect.origin.x = startX + CGFloat(currentCycle * ParrotManager.FrameCount + currentFrameNum) * xDelta!
        
        while rect.origin.x > screenSize.width {
            rect.origin.x -= distancePerTraverse
        }
        
        // draw
        Painter.drawFrameNumber(currentFrameNum, inRect: rect)
    }
}
