//
//  LoginView.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

class LoginView: NSView {
    
    private var tableView: NSTableView?
    fileprivate var dataSource: LoginModelDataSource?
    
    init() {
        super.init(frame: .zero)
        self.config()
        self.loadViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        self.tableView = NSTableView()
        self.dataSource = LoginModelDataSource()
        self.tableView?.dataSource = self.dataSource
    }
    
    func loadViews() {
        
    }
    
}
