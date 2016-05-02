//
//  ParrotManager.swift
//  Parrot
//
//  Created by Loc Nguyen on 30/04/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class ParrotManager: NSObject {
    static let FrameCount = 10
    
    private var currentFrame: Int
    private(set) internal var isLastFrame: Bool
    
    override init() {
        currentFrame = 0
        isLastFrame = false
    }
    
    func getCurrentFrameAndIncrementCount(increment: Bool) -> Int {
        let res = currentFrame
        
        if increment {
            currentFrame += 1
            if currentFrame > ParrotManager.FrameCount-1 {
                currentFrame = 0
            }
            
            checkLastFrame()
        }
        
        return res
    }
    
    func setRandomCurrentFrame() {
        let rand = Int(arc4random_uniform(UInt32(ParrotManager.FrameCount)))
        currentFrame = rand
        checkLastFrame()
    }
    
    private func checkLastFrame() {
        if currentFrame == ParrotManager.FrameCount-1 {
            isLastFrame = true
        }
        else {
            isLastFrame = false
        }
    }
}
