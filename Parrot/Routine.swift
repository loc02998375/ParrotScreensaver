//
//  Routine.swift
//  Parrot
//
//  Created by Loc Nguyen on 30/04/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

protocol Routine {
    var isCompleted: Bool { get set }
    
    func drawNextFrameIfNeccessary(screenSize: NSSize, screenScale: CGFloat)
    func reset()
}
