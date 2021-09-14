//
//  ViewController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Cocoa

class LoginViewController: NSViewController {
    fileprivate var loginModel: LoginModel?
    fileprivate var loginView: LoginView?
    
    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.loginView = LoginView()
        if let view = self.loginView {
            self.view = view
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.frame = NSRect(x: 0, y: 0, width: 500, height: 700)
    }
    
//    fileprivate func config() {
//
//    }
//
//    fileprivate func load() {
//
//    }

}

extension LoginViewController: NSTextFieldDelegate {
    
}
