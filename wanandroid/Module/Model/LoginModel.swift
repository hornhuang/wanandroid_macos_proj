//
//  LoginModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

class LoginModel {
    fileprivate var username = "_yuanhao"
    fileprivate var password = "QAZqaz123456"
//    fileprivate var LoginModel?

    func login() {
        if username.count == 0 {
            Notify.post(name: .LoginFailed, object: "账号不能为空")
            return
        }
        if password.count == 0 {
            Notify.post(name: .LoginFailed, object: "密码不能为空")
            return
        }
        HttpManager.POSTRequestSession(urlstr: "https://www.wanandroid.com/user/login", parameters: ["username": username, "password": password], Success: { response in
            guard let userData = response as? NSDictionary else {
                return
            }
            Notify.post(name: .LoginSucceed, object: userData)
            print("原生请求返回数据", userData)
        }, Fail: { error in
            Notify.post(name: .LoginFailed, object: error)
            print("请求出错", error)
        })
    }
}
