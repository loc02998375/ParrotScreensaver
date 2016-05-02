//
//  MultipleParrotsRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 2/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class MultipleParrotsRoutine: NSObject, Routine {
    internal var numColunms: Int
    internal var numRows: Int
    
    private var lastSize: NSSize
    private var subSize: NSSize
    private var spacing: CGFloat
    
    internal var mgrs: [ParrotManager]
    var isCompleted: Bool
    
    internal var repeatCount: Int
    internal var frameCount: Int
    
    override init() {
        // these values are to be calculated in the first draw call
        // when the screen size is given
        lastSize = NSZeroSize
        subSize = NSZeroSize
        spacing = 0.0
        
        mgrs = []
        isCompleted = false
        repeatCount = 5
        frameCount = 0
        numColunms = 5
        numRows = 5
        
        super.init()
        
        createManagers()
    }
    
    internal func createManagers() {
        mgrs = []
        
        // create a manager for each parrot
        for _ in 0..<(numColunms * numRows) {
            let mgr = ParrotManager()
            mgr.setRandomCurrentFrame()
            mgrs.append(mgr)
        }
    }
    
    internal func drawNextFrame(screenSize: NSSize, screenScale: CGFloat) {
        if !NSEqualSizes(lastSize, screenSize) {
            lastSize = screenSize
            spacing = screenSize.width / 50.0
            subSize.width = (lastSize.width - (CGFloat(numColunms + 1) * spacing)) / CGFloat(numColunms)
            subSize.height = (lastSize.height - (CGFloat(numRows + 1) * spacing)) / CGFloat(numRows)
        }
        
        // draw each sub screen
        var currentMgrIdx = 0
        for col in 0..<numColunms {
            let subScreenY = spacing + CGFloat(col) * (subSize.height + spacing)
            
            for row in 0..<numRows {
                let currentMgr = mgrs[currentMgrIdx]
                let currentFrameNum = currentMgr.getCurrentFrameAndIncrementCount(true)
                let subScreenX = spacing + CGFloat(row) * (subSize.width + spacing)
                
                var rect = NSZeroRect
                rect.size = Painter.imageSizeToFitRectSize(subSize)
                rect.origin.x = subScreenX + (subSize.width - rect.size.width) / 2.0
                rect.origin.y = subScreenY + subSize.height - rect.size.height
                
                drawParrotAtRect(rect, screenSize: screenSize, frameNumber: currentFrameNum, subScreenNumber: currentMgrIdx)
                
                currentMgrIdx += 1
            }
        }
        
        frameCount += 1
    }
    
    internal func drawParrotAtRect(rect: NSRect, screenSize: NSSize, frameNumber: Int, subScreenNumber: Int) {
        Painter.drawFrameNumber(frameNumber, inRect: rect)
    }
    
    func drawNextFrameIfNeccessary(screenSize: NSSize, screenScale: CGFloat) {
        if isCompleted {
            return
        }
        
        // draw
        drawNextFrame(screenSize, screenScale: screenScale)
        
        // check completion
        if frameCount >= repeatCount * ParrotManager.FrameCount {
            isCompleted = true
        }
    }
    
    func reset() {
        isCompleted = false
        frameCount = 0
    }
}
