//
//  ParrotView.swift
//  Parrot
//
//  Created by Loc Nguyen on 30/04/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa
import ScreenSaver

let BundleId = "com.rollingpotato.parrot"

class ParrotView: ScreenSaverView {
    private var currentRoutine: Routine
    
    override init?(frame: NSRect, isPreview: Bool) {
        currentRoutine = BasicRoutine()
        
        super.init(frame: frame, isPreview: isPreview)
        
        animationTimeInterval = 53.0/1000.0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: NSRect) {
        // bg
        let bgPath = NSBezierPath(rect: rect)
        NSColor.whiteColor().set()
        bgPath.fill()
        
        // drawing
        currentRoutine.drawNextFrameIfNeccessary(rect.size, screenScale: NSScreen.mainScreen()?.backingScaleFactor ?? 1.0)
        
        if currentRoutine.isCompleted {
            self.currentRoutine = RoutineFactory.getNewRoutine()
        }
    }
    
    override func animateOneFrame() {
        self.needsDisplay = true
    }
    
    override func hasConfigureSheet() -> Bool {
        return false
    }
    
    override func configureSheet() -> NSWindow? {
        return nil
    }
}
