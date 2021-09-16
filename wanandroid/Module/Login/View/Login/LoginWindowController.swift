//
//  LoginWindowController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

class LoginWindowController: NSWindowController {
    
//    lazy var window = { () -> NSWindow in
//        let frame = CGRect(x: 0, y: 0, width: 1400, height: 1280)
//        let style : NSWindow.StyleMask = [NSWindow.StyleMask.titled,NSWindow.StyleMask.closable,NSWindow.StyleMask.resizable]
//        //创建window
//        let myWindow = NSWindow(contentRect:frame, styleMask:style, backing:.buffered, defer:false)
//        myWindow.contentViewController = LoginViewController()
//        myWindow.title = "New Create Window"
//        return NSWindow.init()
//    }()
    
    //    lazy var windowController = { () -> LoginWindowController in
    //        let myWindowController = LoginWindowController.init()
    //        self.myWindow.windowController = myWindowController
    //        myWindowController.window = self.myWindow
    //        return myWindowController
    //    }()
    
    override func windowWillLoad() {
        super.windowWillLoad()
//        let frame = CGRect(x: 0, y: 0, width: 1400, height: 1280)
//        let style : NSWindow.StyleMask = [NSWindow.StyleMask.titled,NSWindow.StyleMask.closable,NSWindow.StyleMask.resizable]
//        //创建window
//        window = NSWindow(contentRect:frame, styleMask:style, backing:.buffered, defer:false)
//        window?.contentViewController = LoginViewController()
//        window?.title = "New Create Window"
//        window?.center()
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.

    }
    
    override var windowNibName: NSNib.Name? {
        get{
            return NSNib.Name("LoginWindowController")
        }
    }
}
