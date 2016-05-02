//
//  RandomUpSideDownMultipleParrotRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 2/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class RandomUpSideDownMultipleParrotRoutine: MultipleParrotsRoutine {
    private var isUpSideDownMgr: [Bool]
    
    override init() {
        isUpSideDownMgr = []
        
        super.init()
        
        createUpSideDownManagers()
    }
    
    internal func createUpSideDownManagers() {
        isUpSideDownMgr = []
        
        // randomly determine upside down or not
        for _ in 0..<(numColunms * numRows) {
            let rand = Int(arc4random_uniform(2))
            isUpSideDownMgr.append(rand == 1)
        }
    }
    
    override internal func drawParrotAtRect(rect: NSRect, screenSize: NSSize, frameNumber: Int, subScreenNumber: Int) {
        if isUpSideDownMgr[subScreenNumber] {
            let transformer = NSAffineTransform()
            let context = NSGraphicsContext.currentContext()
            context!.saveGraphicsState()
            transformer.translateXBy(rect.origin.x + rect.size.width, yBy: rect.origin.y + rect.size.height)
            transformer.rotateByDegrees(180.0)
            transformer.translateXBy(-rect.origin.x, yBy: -rect.origin.y)
            transformer.concat()
            
            super.drawParrotAtRect(rect, screenSize: screenSize, frameNumber: frameNumber, subScreenNumber: subScreenNumber)
            
            context!.restoreGraphicsState()
        }
        else {
            super.drawParrotAtRect(rect, screenSize: screenSize, frameNumber: frameNumber, subScreenNumber: subScreenNumber)
        }
    }
}
