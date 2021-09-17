//
//  PlaygroundModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/17.
//

import Foundation

class PlaygroundModel: NSObject {
    fileprivate var article: ArticleModel
    
    init(article: ArticleModel) {
        self.article = article
        super.init()
    }
}
