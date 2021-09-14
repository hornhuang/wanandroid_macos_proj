//
//  HttpCallBak.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

protocol HttpBaseCallBack {
    func onSucceed(msg: String)
    func onFailed(errMsg: String)
}
