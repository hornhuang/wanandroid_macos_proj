//
//  ArticlePageModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/17.
//

import Foundation

class ArticlePageResponse : NSObject, NSCoding{

    var articlePage : AticlePageModel!
    var errorCode : Int!
    var errorMsg : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let dataData = dictionary["data"] as? [String:Any]{
            articlePage = AticlePageModel(fromDictionary: dataData)
        }
        errorCode = dictionary["errorCode"] as? Int
        errorMsg = dictionary["errorMsg"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if articlePage != nil{
            dictionary["data"] = articlePage.toDictionary()
        }
        if errorCode != nil{
            dictionary["errorCode"] = errorCode
        }
        if errorMsg != nil{
            dictionary["errorMsg"] = errorMsg
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         articlePage = aDecoder.decodeObject(forKey: "data") as? AticlePageModel
         errorCode = aDecoder.decodeObject(forKey: "errorCode") as? Int
         errorMsg = aDecoder.decodeObject(forKey: "errorMsg") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if articlePage != nil{
            aCoder.encode(articlePage, forKey: "data")
        }
        if errorCode != nil{
            aCoder.encode(errorCode, forKey: "errorCode")
        }
        if errorMsg != nil{
            aCoder.encode(errorMsg, forKey: "errorMsg")
        }

    }

}

class AticlePageModel : NSObject, NSCoding{

    var curPage : Int!
    var articles : [ArticleModel]!
    var offset : Int!
    var over : Bool!
    var pageCount : Int!
    var size : Int!
    var total : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        curPage = dictionary["curPage"] as? Int
        articles = [ArticleModel]()
        if let datasArray = dictionary["datas"] as? [[String:Any]]{
            for dic in datasArray{
                let value = ArticleModel(fromDictionary: dic)
                articles.append(value)
            }
        }
        offset = dictionary["offset"] as? Int
        over = dictionary["over"] as? Bool
        pageCount = dictionary["pageCount"] as? Int
        size = dictionary["size"] as? Int
        total = dictionary["total"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if curPage != nil{
            dictionary["curPage"] = curPage
        }
        if articles != nil{
            var dictionaryElements = [[String:Any]]()
            for datasElement in articles {
                dictionaryElements.append(datasElement.toDictionary())
            }
            dictionary["datas"] = dictionaryElements
        }
        if offset != nil{
            dictionary["offset"] = offset
        }
        if over != nil{
            dictionary["over"] = over
        }
        if pageCount != nil{
            dictionary["pageCount"] = pageCount
        }
        if size != nil{
            dictionary["size"] = size
        }
        if total != nil{
            dictionary["total"] = total
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         curPage = aDecoder.decodeObject(forKey: "curPage") as? Int
         articles = aDecoder.decodeObject(forKey :"datas") as? [ArticleModel]
         offset = aDecoder.decodeObject(forKey: "offset") as? Int
         over = aDecoder.decodeObject(forKey: "over") as? Bool
         pageCount = aDecoder.decodeObject(forKey: "pageCount") as? Int
         size = aDecoder.decodeObject(forKey: "size") as? Int
         total = aDecoder.decodeObject(forKey: "total") as? Int

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if curPage != nil{
            aCoder.encode(curPage, forKey: "curPage")
        }
        if articles != nil{
            aCoder.encode(articles, forKey: "datas")
        }
        if offset != nil{
            aCoder.encode(offset, forKey: "offset")
        }
        if over != nil{
            aCoder.encode(over, forKey: "over")
        }
        if pageCount != nil{
            aCoder.encode(pageCount, forKey: "pageCount")
        }
        if size != nil{
            aCoder.encode(size, forKey: "size")
        }
        if total != nil{
            aCoder.encode(total, forKey: "total")
        }

    }

}
