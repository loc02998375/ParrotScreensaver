//
//  RoutineFactory.swift
//  Parrot
//
//  Created by Loc Nguyen on 1/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class RoutineFactory: NSObject {
    class func getNewRoutine() -> Routine {
        let RoutineCount: UInt32 = 8
        let rand = Int(arc4random_uniform(RoutineCount))
        
        switch rand {
        case 0:
            return BasicRoutine()
        case 1:
            return UpSideDownRoutine()
        case 2:
            return WalkingRoutine()
        case 3:
            return UpSideDownWalkingRoutine()
        case 4:
            return MultipleParrotsRoutine()
        case 5:
            return RandomUpSideDownMultipleParrotRoutine()
        case 6:
            return MultipleRandomDisappearanceParrotsRoutine()
        case 7:
            return RandomUpSideDownDisappearanceMultipleParrotsRoutine()
        default:
            return BasicRoutine()
        }
    }
}
