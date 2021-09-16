//
//  ViewController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Cocoa

class LoginViewController: NSViewController {
    /// 只实例化一次，后续不变的对象适合用懒加载
    fileprivate let loginModel: LoginModel = {
        return LoginModel()
    }()
    
    fileprivate var tableView: NSTableView = NSTableView()
    fileprivate var scrollView: NSScrollView = NSScrollView()
    
    fileprivate let userNameTextField: NSTextField = {
        let textField = NSTextField()
        textField.placeholderString = "账户"
        textField.tag = 0x1
        return textField
    }()
    
    fileprivate let passwordTextField: NSTextField = {
        let textField = NSTextField()
        textField.placeholderString = "密码"
        textField.tag = 0x2
        return textField
    }()
    
    fileprivate let loginBtn: NSButton = {
        let btn = NSButton()
        btn.stringValue = "登 录"
        return btn
    }()
    
    fileprivate var loginView: LoginView?
    
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
        Notify.add(self, selector: #selector(onSucceed(notification:)), name: .LoginSucceed)
        Notify.add(self, selector: #selector(onFailed(notification:)), name: .LoginFailed)
        
        self.view.addSubview(userNameTextField)
        
        self.view.addSubview(passwordTextField)
        
        self.loginBtn.action = #selector(login)
        self.view.addSubview(loginBtn)
//        scrollView.hasVerticalScroller = true
//        scrollView.frame = self.view.bounds
//        self.view = scrollView
//
//        let column: NSTableColumn = NSTableColumn(identifier: NSUserInterfaceItemIdentifier(rawValue: "login"))
//        tableView.addTableColumn(column)
//        tableView.frame         = self.view.bounds
//        tableView.delegate      = self
//        tableView.dataSource    = self
//        scrollView.contentView.documentView = tableView
    }
    override func viewWillLayout() {
        let width = self.view.bounds.width
        let height = self.view.bounds.height
        
        userNameTextField.frame = NSRect(x: width / 4, y: height * 3 / 4, width: width / 2, height: 32)
        
        passwordTextField.frame = NSRect(x: width / 4, y: height * 2 / 4, width: width / 2, height: 32)
        
        loginBtn.frame          = NSRect(x: width / 4, y: height * 1 / 4, width: width / 2, height: 32)
    }
    
    fileprivate func load() {
        loginView?.frame = NSRect(x: 0, y: 0, width: 128, height: 256)
    }

    @objc func login() {
        loginModel.username = userNameTextField.stringValue
        loginModel.password = passwordTextField.stringValue
        loginModel.login()
    }
    
}

extension LoginViewController: NSTextFieldDelegate {
    func controlTextDidChange(_ obj: Notification) {
        print("\(obj)")
    }
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
    @objc func onSucceed(notification: NSNotification) {
        if let user = notification.object as? User {
            UserManager.shared.update(user: user)
        }
        // TODO
    }
    
    @objc func onFailed(notification: NSNotification) {
        self.showToast(message: "\(notification.object ?? "")")
    }
}

extension NSViewController {
    func showToast(message : String) {

        let toastLabel = NSTextField(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.isBezeled = false
        toastLabel.isEditable = false
        toastLabel.backgroundColor = NSColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = NSColor.white
        toastLabel.font = .systemFont(ofSize: 12.0)
        toastLabel.alignment = .center;
        toastLabel.stringValue = message
        toastLabel.alphaValue = 1.0
        toastLabel.wantsLayer = true
        toastLabel.layer?.masksToBounds = false
        toastLabel.layer?.cornerRadius = 10
        self.view.addSubview(toastLabel)
        // NSView fade-out animation
        NSAnimationContext.runAnimationGroup({ context in
            // 1 second animation
            context.duration = 4

            // The view will animate to alphaValue 0
            toastLabel.animator().alphaValue = 0
        }) {
            // Handle completion
            toastLabel.removeFromSuperview()
        }
    }
}
