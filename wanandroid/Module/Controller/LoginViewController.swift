//
//  ViewController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Cocoa

class LoginViewController: NSViewController {
    fileprivate var loginModel: LoginModel = LoginModel()
    fileprivate var tableView: NSTableView = NSTableView()
    fileprivate var scrollView: NSScrollView = NSScrollView()
    
    fileprivate var user: User? {
        didSet {
            
        }
    }
    
    fileprivate var loginView: LoginView?
    
    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.config()
        self.load()
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        loginModel.login()
    }
    
    fileprivate func config() {
        Notify.add(self, selector: #selector(onSucceed(user:)), name: .LoginSucceed)
        Notify.add(self, selector: #selector(onFailed(errMsg:)), name: .LoginFailed)
        
        scrollView.hasVerticalScroller = true
        scrollView.frame = self.view.bounds
        self.view = scrollView
        
        let column: NSTableColumn = NSTableColumn(identifier: NSUserInterfaceItemIdentifier(rawValue: "login"))
        tableView.addTableColumn(column)
        tableView.frame         = self.view.bounds
        tableView.delegate      = self
        tableView.dataSource    = self
        scrollView.contentView.documentView = tableView
    }
    
    fileprivate func load() {
        loginView?.frame = NSRect(x: 0, y: 0, width: 128, height: 256)
    }

}

extension LoginViewController: NSTextFieldDelegate {
    
}

extension LoginViewController: NSTableViewDelegate {}

extension LoginViewController: NSTableViewDataSource {
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var cell: NSTableCellView?
        
        if tableColumn == tableView.tableColumns[0] {
            if row == 0 {
                cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: TextFieldCell.Identifier), owner: nil) as? TextFieldCell ?? TextFieldCell()
                cell?.textField?.placeholderString = "账号"
                cell?.imageView?.image = NSImage(named: "AppIcon")
            } else if row == 1 {
                cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: TextFieldCell.Identifier), owner: nil) as? TextFieldCell ?? TextFieldCell()
                cell?.textField?.placeholderString = "密码"
                cell?.layer?.backgroundColor = NSColor.red.cgColor
            } else {
                cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: LoginButtonCell.Identifier), owner: nil) as? LoginButtonCell ?? LoginButtonCell()
                cell?.textField?.stringValue = "登录"
                cell?.imageView?.image = NSImage(named: "AppIcon")
            }
        }
        
        return cell
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 44
    }
}

extension LoginViewController {
    @objc func onSucceed(user: User) {
        self.user = user
//        tableView.reloadData()
    }
    
    @objc func onFailed(errMsg: String) {
        
    }
}
