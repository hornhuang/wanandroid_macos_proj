//
//  LoginBtnCell.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation
import AppKit

public class LoginButtonCell: NSTableCellView {
    
    fileprivate let text: NSTextField = {
        return NSTextField()
    }()
    
    public var title: String = "" {
        didSet {
            text.stringValue = title
            
        }
    }
    
    public override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        text.frame = NSRect(x: 0, y: 0, width: 100, height: 44)
        self.addSubview(text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
