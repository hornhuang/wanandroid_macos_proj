//
//  MainViewController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/16.
//

import AppKit
import ReactiveCocoa

class MainViewController: NSViewController {
    fileprivate var scrollView: NSScrollView = {
        let scrollView =  NSScrollView()
        scrollView.hasVerticalScroller = true
        return scrollView
    }()
    
    fileprivate let tableView: NSTableView = {
        let table = NSTableView()
        let column: NSTableColumn = NSTableColumn(identifier: NSUserInterfaceItemIdentifier(rawValue: "login"))
        table.addTableColumn(column)
        return table
    }()
    
    fileprivate let playgroundViewModel = PlaygroundViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let vc = LoginViewController()
//        vc.detachWindow()
        self.config()
        self.bindViewModel()
    }
    
    fileprivate func config() {
        self.view.addSubview(self.scrollView)
        
        self.tableView.delegate     = playgroundViewModel
        self.tableView.dataSource   = playgroundViewModel
        self.scrollView.contentView.documentView = self.tableView
    }
    
    override func viewDidLayout() {
        super.viewDidLayout()
        self.scrollView.frame   = self.view.bounds
        self.tableView.frame    = self.scrollView.bounds
        
    }
    
    fileprivate func bindViewModel() {
        self.title = self.playgroundViewModel.title
        
        self.playgroundViewModel.loadingSignal().observe{
            [weak self] event in
            DispatchQueue.main.sync {
                self?.tableView.reloadData()
            }
        }
        self.playgroundViewModel.loadAticles()
    }
    
}
