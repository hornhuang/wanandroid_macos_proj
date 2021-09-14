//
//  AppDelegate.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    lazy var windowController: LoginWindowController = {
        let wondowVC = LoginWindowController()
        return wondowVC
    }()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        self.windowController.showWindow(self)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

