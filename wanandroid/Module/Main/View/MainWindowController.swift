//
//  MainWindowController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/16.
//

import AppKit

class MainWindowController: BaseWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        if let mainWindow = window {
//            mainWindow.contentViewController = self
            mainWindow.isRestorable = false
            mainWindow.setFrame(NSMakeRect(0.0, 0.0, 1080.0, 880.0), display: true)
            mainWindow.makeKeyAndOrderFront(self)
            mainWindow.center()
        }
    }
    
    override var windowNibName: NSNib.Name? {
        get{
            return NSNib.Name("MainWindowController")
        }
    }
}
