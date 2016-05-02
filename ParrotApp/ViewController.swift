//
//  ViewController.swift
//  ParrotApp
//
//  Created by Loc Nguyen on 2/05/2016.
//  Copyright © 2016 RollingPotato. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    private var parrotView: ParrotView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        parrotView = ParrotView(frame: self.view.bounds, isPreview: false)
        self.view.addSubview(parrotView!)
        
        NSTimer.scheduledTimerWithTimeInterval(parrotView!.animationTimeInterval, target: parrotView!, selector: #selector(ParrotView.animateOneFrame), userInfo: nil, repeats: true)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

