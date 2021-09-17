//
//  PlaygroundViewModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/17.
//

import AppKit
import ReactiveSwift

enum PlaygroundError:Error {
    case customError
    var desc:String{
        return "这是自定义的错误"
    }
}

class PlaygroundViewModel: NSObject {
    fileprivate var articlePageModel: AticlePageModel?
    fileprivate var nextBlock: Any?
    typealias ArticleSignal = Signal<Bool, PlaygroundError>
    fileprivate var obser: ArticleSignal.Observer?
    
    public var title = "广场"
    
    public var articles: [ArticleModel] {
        get {
            return articlePageModel?.articles ?? []
        }
    }
    
    override init() {
        super.init()
        self.config()
        self.loadAticles()
    }
    
    fileprivate func config() {

    }
    
    public func loadingSignal() -> ArticleSignal {
        return ArticleSignal.init { (observer, lifetime) in
            obser = observer
            lifetime.observeEnded {
                print("信号生命周期结束")
            }
        }
    }
    
    public func loadAticles() {
        HttpManager.GetRequestSession(urlstr: wanandroidBaseUrl + "/article/list/0/json", parameters: nil, Success: {
            [weak self] response in
            guard let userData = response as? [String:Any] else {
                return
            }
            guard userData["errorCode"] as? Int == 0 else {
                Notify.post(name: .LoginFailed, object: userData["errorMsg"])
                return
            }
            self?.articlePageModel = ArticlePageResponse(fromDictionary: userData).articlePage
            print("get succeed")
            self?.obser?.send(value: true)
        }, Fail: {
            error in
        })
    }
    
}

extension PlaygroundViewModel: NSTableViewDelegate {}

extension PlaygroundViewModel: NSTableViewDataSource {
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var cell: NSTableCellView?
        
        if tableColumn == tableView.tableColumns[0] {
            guard row < articles.count else {
                return nil
            }
            let btnCell = LoginButtonCell(frame: .infinite)
            btnCell.title = articles[row].chapterName ?? ""
            btnCell.imageView?.image = NSImage(named: "AppIcon")
            cell = btnCell
        }
        
        
        return cell
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 44
    }
    
}
