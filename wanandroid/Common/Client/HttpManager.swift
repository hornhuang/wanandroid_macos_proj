//
//  Http.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

class HttpManager {
    static let configuration: URLSessionConfiguration = URLSessionConfiguration.default
    // 定义一个URLSession变量
    static var SessionManager = URLSession(configuration: configuration)

    class func GetRequestSession(urlstr: String, parameters: NSDictionary?, Success: @escaping (_ response: Any) -> Void, Fail: @escaping (_ error: NSError) -> Void) {
        var _UrlStr: String = urlstr
        if parameters != nil {
            let JSONArr: NSMutableArray = NSMutableArray()
            for key: Any in (parameters?.allKeys)! {
                let JSONString = "\(key)\("=")\(parameters![key] as! String)"
                JSONArr.add(JSONString)
            }
            let paramStr = JSONArr.componentsJoined(by: "&")
            _UrlStr.append("?" + paramStr)
            print("请求字符串" + _UrlStr)
        }
        let _url = URL(string: _UrlStr.urlEncoded())
        var urlRequest = URLRequest(url: _url!)
        urlRequest.httpMethod = "GET"

        HttpManager.SessionManager = URLSession(configuration: configuration)

        let task = HttpManager.SessionManager.dataTask(with: urlRequest) { data, _, error in
            if error == nil {
                if data == nil {
                    return
                }
                let jsonData = try! JSONSerialization.jsonObject(with: data! as Data, options: .mutableContainers)
                Success(jsonData)
            } else {
                Fail(error! as NSError)
            }
        }
        task.resume()
    }

    class func POSTRequestSession(urlstr: String, parameters: NSDictionary?, Success: @escaping (_ response: Any) -> Void, Fail: @escaping (_ error: NSError) -> Void) {
        let _UrlStr: String = urlstr

        let _url = URL(string: _UrlStr.urlEncoded())
        var urlRequest = URLRequest(url: _url!)
        urlRequest.httpMethod = "POST"
        let JSONArr: NSMutableArray = NSMutableArray()
        if parameters != nil {
            for key: Any in (parameters?.allKeys)! {
                let dictStr = "\(key)\("=")\(parameters!.value(forKey: key as! String)!)"
                JSONArr.add(dictStr)
            }
            urlRequest.httpBody = JSONArr.componentsJoined(by: "&").data(using: .utf8)
        }

        HttpManager.SessionManager = URLSession(configuration: configuration)

        let task = HttpManager.SessionManager.dataTask(with: urlRequest) { data, _, error in

            // 注意：当前这个闭包是在子线程中执行的，如果想要在这儿执行UI操作必须通过线程间的通信回到主线程
            if error == nil {
                if data == nil {
                    return
                }
                let jsonData = try! JSONSerialization.jsonObject(with: data! as Data, options: .mutableContainers)
                Success(jsonData)
            } else {
                Fail(error! as NSError)
            }
        }
        task.resume()
    }
}

extension String {
    // 将原始的url编码为合法的url
    func urlEncoded() -> String {
        let encodeUrlString = addingPercentEncoding(withAllowedCharacters:
            .urlQueryAllowed)
        return encodeUrlString ?? ""
    }

    // 将编码后的url转换回原始的url
    func urlDecoded() -> String {
        return removingPercentEncoding ?? ""
    }
}
