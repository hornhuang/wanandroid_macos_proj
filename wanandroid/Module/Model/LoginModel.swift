//
//  LoginModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

protocol LoginModelDelegate {
    func onSucceed(user: User)
    func onFailed(errMsg: String)
}

class LoginModel {
    fileprivate var username = "_yuanhao"
    fileprivate var password = "QAZqaz123456"
    fileprivate var delegate: LoginModelDelegate?
    fileprivate var user: User?

    func login() {
        if username.count == 0 {
            Notify.post(name: .LoginFailed, object: "账号不能为空")
            return
        }
        if password.count == 0 {
            Notify.post(name: .LoginFailed, object: "密码不能为空")
            return
        }
        
        HttpManager.POSTRequestSession(urlstr: "https://www.wanandroid.com/user/login", parameters: ["username": username, "password": password], Success: { [weak self] response in
            guard let userData = response as? [String:Any] else {
                return
            }
            self?.user = UserBuilder(fromDictionary: userData).user
            Notify.post(name: .LoginSucceed, object: self?.user)
            print("原生请求返回数据", userData)
        }, Fail: { error in
            Notify.post(name: .LoginFailed, object: error)
            print("请求出错", error)
        })
    }
}
