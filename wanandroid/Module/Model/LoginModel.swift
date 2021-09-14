//
//  LoginModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

class LoginModel {
    fileprivate var username = ""
    fileprivate var password = ""

    func login(callback: HttpBaseCallBack) -> Bool {
        guard username.count == 0 else {
            callback.onFailed(errMsg: "账号不能为空")
            return false
        }
        guard password.count == 0 else {
            callback.onFailed(errMsg: "密码不能为空")
            return false
        }
        HttpManager.POSTRequestSession(urlstr: wanandroidBaseUrl + "/user/login", parameters: ["productKey": username, "area": password], Success: { response in

            let dict = response as? NSDictionary
            if dict == nil {
                return
            }
            print("原生请求返回数据", dict!)

        }, Fail: { error in
            callback.onFailed(errMsg: "")
            print("请求出错", error)
        })
        return true
    }
}
