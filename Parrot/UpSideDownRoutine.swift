//
//  UpSideDownRoutine.swift
//  Parrot
//
//  Created by Loc Nguyen on 1/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class UpSideDownRoutine: BasicRoutine {
    override internal func drawNextFrame(screenSize: NSSize, screenScale: CGFloat) {
        let transformer = NSAffineTransform()
        let context = NSGraphicsContext.currentContext()
        context!.saveGraphicsState()
        transformer.rotateByDegrees(180.0)
        transformer.translateXBy(-screenSize.width, yBy: -screenSize.height)
        transformer.concat()
        
        super.drawNextFrame(screenSize, screenScale: screenScale)
        
        context!.restoreGraphicsState()
    }
}
