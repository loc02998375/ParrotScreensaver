//
//  RandomUpSideDownDisappearanceMultipleParrotsRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 2/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class RandomUpSideDownDisappearanceMultipleParrotsRoutine: RandomUpSideDownMultipleParrotRoutine {
    private var disappearanceMgr: [Bool]
    
    override init() {
        disappearanceMgr = []
        
        super.init()
        
        // increase the number of parrot comparing to the parent class
        // because there is a 33% of not having to draw parrot -> same performance as parent
        numColunms = 8
        numRows = 8
        
        // randomly determine upside down or not
        for _ in 0..<(numColunms * numRows) {
            let rand = Int(arc4random_uniform(3))
            disappearanceMgr.append(rand == 1 || rand == 0)
        }
        
        createManagers()
        createUpSideDownManagers()
    }
    
    override internal func drawParrotAtRect(rect: NSRect, screenSize: NSSize, frameNumber: Int, subScreenNumber: Int) {
        if !disappearanceMgr[subScreenNumber] {
            super.drawParrotAtRect(rect, screenSize: screenSize, frameNumber: frameNumber, subScreenNumber: subScreenNumber)
        }
    }
}
