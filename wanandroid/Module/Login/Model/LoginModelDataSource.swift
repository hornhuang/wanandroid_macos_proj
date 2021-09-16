//
//  LoginModelDataSource.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

class LoginModelDataSource: NSObject, NSTableViewDataSource {
    
    fileprivate var dataArr = [String]()
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        dataArr.count
    }
    
    
    
}
