//
//  AppDelegate.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
//    lazy var myWindow = { () -> NSWindow in
//        let frame = CGRect(x: 0, y: 0, width: 1400, height: 1280)
//        let style : NSWindow.StyleMask = [NSWindow.StyleMask.titled,NSWindow.StyleMask.closable,NSWindow.StyleMask.resizable]
//        //创建window
//        let myWindow = NSWindow(contentRect:frame, styleMask:style, backing:.buffered, defer:false)
////        myWindow.contentViewController = LoginViewController()
//        myWindow.title = "New Create Window"
//        return NSWindow.init()
//    }()
//
//    lazy var windowController = { () -> LoginWindowController in
//        let myWindowController = LoginWindowController.init()
//        self.myWindow.windowController = myWindowController
//        myWindowController.window = self.myWindow
//        return myWindowController
//    }()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        self.windowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

