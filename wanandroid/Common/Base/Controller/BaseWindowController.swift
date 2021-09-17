//
//  BaseWindowController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/17.
//

import AppKit

class BaseWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        Notify.add(self, selector: #selector(terminateWindow(notification:)), name: .TerminateWindow)
    }
    
    override init(window: NSWindow?) {
        super.init(window: window)
        Notify.add(self, selector: #selector(terminateWindow(notification:)), name: .TerminateWindow)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func close() {
        Notify.remove(self)
        super.close()
    }
    
    @objc func terminateWindow(notification: NSNotification) {
        if let terminateWindow = notification.object as? NSWindow, terminateWindow == self.window {
            print("clase LoginWindowController")
            close()
        }
    }
}
