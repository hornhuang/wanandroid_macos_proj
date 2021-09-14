//
//  LoginWindowController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

class LoginWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        window?.center()
    }
    
    override var windowNibName: NSNib.Name? {
        get{
            return NSNib.Name("LoginWindowController")
        }
    }
}
