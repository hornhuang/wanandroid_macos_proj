//
//  LoginView.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

class LoginView: NSView {
    public var tableDelegate: NSTableViewDelegate? {
        didSet {
            tableView.delegate = tableDelegate
            reloadData()
        }
    }
    
    public var dataSource: NSTableViewDataSource? {
        didSet {
            tableView.dataSource = dataSource
            reloadData()
        }
    }
    
    private var tableView: NSTableView = NSTableView()
    
    init() {
        super.init(frame: .zero)
        self.config()
        self.loadViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func reloadData() {
//        tableView.reloadData()
    }
    
    fileprivate func config() {
        
    }
    
    fileprivate func loadViews() {
        
        self.layer?.backgroundColor = NSColor.red.cgColor
        let text = NSTextView(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
        text.string = "dasdsadasdasdsadsadasdasdasd"
        self.addSubview(text)
        
            tableView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
        let view = NSTableView(frame: CGRect(x: 500, y: 500, width: 200, height: 300))
        view.backgroundColor = NSColor.red
            self.addSubview(view)
    }
    
}
