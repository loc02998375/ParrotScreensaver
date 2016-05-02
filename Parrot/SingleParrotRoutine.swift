//
//  SingleParrotRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 1/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class SingleParrotRoutine: NSObject, Routine {
    internal let mgr: ParrotManager
    var isCompleted: Bool
    
    internal var repeatCount: Int
    internal var currentCycle: Int
    
    override init() {
        mgr = ParrotManager()
        isCompleted = false
        repeatCount = 5
        currentCycle = 0
    }
    
    func drawNextFrameIfNeccessary(screenSize: NSSize, screenScale: CGFloat) {
        if isCompleted {
            return
        }

        // capture last frame here before drawNextFrame: modifies it
        let isLastFrame = mgr.isLastFrame
        
        // draw
        drawNextFrame(screenSize, screenScale: screenScale)

        // check completion
        if isLastFrame {
            if currentCycle >= repeatCount-1 {
                isCompleted = true
            }
            else {
                currentCycle += 1
            }
        }
    }
    
    internal func drawNextFrame(screenSize: NSSize, screenScale: CGFloat) {
        fatalError()
    }
    
    func reset() {
        isCompleted = false
        currentCycle = 0
    }
}
