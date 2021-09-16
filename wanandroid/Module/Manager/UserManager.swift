//
//  UserManager.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/16.
//

import Foundation

/// 懒加载为 iOS 单例中最为合适的一种
/// 单例的缺陷:
/// 1、单例状态的混乱
/// 2、测试困难
/// 3、单例访问的混乱
class UserManager {
    static let shared = {
        return UserManager()
    }()
    
    fileprivate var user: User?
    
    public var username: String? {
        get {
            return user?.username
        }
    }
    
    public func update(user: User) {
        self.user = user
    }
}
