//
//  MainViewController.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/16.
//

import AppKit

class MainViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = LoginViewController()
        vc.detachWindow()
    }
    
}
