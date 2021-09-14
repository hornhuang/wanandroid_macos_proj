//
//  NotificationManager.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

class Notify {
    class func post(name aName: NSNotification.Name, object anObject: Any?) {
        NotificationCenter.default.post(name: aName, object: anObject)
    }
    
    class func add(_ observer: Any, selector aSelector: Selector, name aName: NSNotification.Name?) {
        NotificationCenter.default.addObserver(observer, selector: aSelector, name: aName, object: nil)
    }
}

extension NSNotification.Name {

    public static let LoginSucceed: NSNotification.Name = NSNotification.Name(rawValue: "LoginSucceedNotification")
    
    public static let LoginFailed: NSNotification.Name = NSNotification.Name(rawValue: "LoginFailedNotification")
    
}
