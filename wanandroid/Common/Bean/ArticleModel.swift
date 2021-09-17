//
//  ArticleModel.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/17.
//

//
//    RootClass.swift
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ArticleModel : NSObject, NSCoding{
    
    var apkLink : String!
    var audit : Int!
    var author : String!
    var canEdit : Bool!
    var chapterId : Int!
    var chapterName : String!
    var collect : Bool!
    var courseId : Int!
    var desc : String!
    var descMd : String!
    var envelopePic : String!
    var fresh : Bool!
    var host : String!
    var id : Int!
    var link : String!
    var niceDate : String!
    var niceShareDate : String!
    var origin : String!
    var prefix : String!
    var projectLink : String!
    var publishTime : Int!
    var realSuperChapterId : Int!
    var selfVisible : Int!
    var shareDate : Int!
    var shareUser : String!
    var superChapterId : Int!
    var superChapterName : String!
    var tags : [AnyObject]!
    var title : String!
    var type : Int!
    var userId : Int!
    var visible : Int!
    var zan : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        apkLink = dictionary["apkLink"] as? String
        audit = dictionary["audit"] as? Int
        author = dictionary["author"] as? String
        canEdit = dictionary["canEdit"] as? Bool
        chapterId = dictionary["chapterId"] as? Int
        chapterName = dictionary["chapterName"] as? String
        collect = dictionary["collect"] as? Bool
        courseId = dictionary["courseId"] as? Int
        desc = dictionary["desc"] as? String
        descMd = dictionary["descMd"] as? String
        envelopePic = dictionary["envelopePic"] as? String
        fresh = dictionary["fresh"] as? Bool
        host = dictionary["host"] as? String
        id = dictionary["id"] as? Int
        link = dictionary["link"] as? String
        niceDate = dictionary["niceDate"] as? String
        niceShareDate = dictionary["niceShareDate"] as? String
        origin = dictionary["origin"] as? String
        prefix = dictionary["prefix"] as? String
        projectLink = dictionary["projectLink"] as? String
        publishTime = dictionary["publishTime"] as? Int
        realSuperChapterId = dictionary["realSuperChapterId"] as? Int
        selfVisible = dictionary["selfVisible"] as? Int
        shareDate = dictionary["shareDate"] as? Int
        shareUser = dictionary["shareUser"] as? String
        superChapterId = dictionary["superChapterId"] as? Int
        superChapterName = dictionary["superChapterName"] as? String
        tags = dictionary["tags"] as? [AnyObject]
        title = dictionary["title"] as? String
        type = dictionary["type"] as? Int
        userId = dictionary["userId"] as? Int
        visible = dictionary["visible"] as? Int
        zan = dictionary["zan"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if apkLink != nil{
            dictionary["apkLink"] = apkLink
        }
        if audit != nil{
            dictionary["audit"] = audit
        }
        if author != nil{
            dictionary["author"] = author
        }
        if canEdit != nil{
            dictionary["canEdit"] = canEdit
        }
        if chapterId != nil{
            dictionary["chapterId"] = chapterId
        }
        if chapterName != nil{
            dictionary["chapterName"] = chapterName
        }
        if collect != nil{
            dictionary["collect"] = collect
        }
        if courseId != nil{
            dictionary["courseId"] = courseId
        }
        if desc != nil{
            dictionary["desc"] = desc
        }
        if descMd != nil{
            dictionary["descMd"] = descMd
        }
        if envelopePic != nil{
            dictionary["envelopePic"] = envelopePic
        }
        if fresh != nil{
            dictionary["fresh"] = fresh
        }
        if host != nil{
            dictionary["host"] = host
        }
        if id != nil{
            dictionary["id"] = id
        }
        if link != nil{
            dictionary["link"] = link
        }
        if niceDate != nil{
            dictionary["niceDate"] = niceDate
        }
        if niceShareDate != nil{
            dictionary["niceShareDate"] = niceShareDate
        }
        if origin != nil{
            dictionary["origin"] = origin
        }
        if prefix != nil{
            dictionary["prefix"] = prefix
        }
        if projectLink != nil{
            dictionary["projectLink"] = projectLink
        }
        if publishTime != nil{
            dictionary["publishTime"] = publishTime
        }
        if realSuperChapterId != nil{
            dictionary["realSuperChapterId"] = realSuperChapterId
        }
        if selfVisible != nil{
            dictionary["selfVisible"] = selfVisible
        }
        if shareDate != nil{
            dictionary["shareDate"] = shareDate
        }
        if shareUser != nil{
            dictionary["shareUser"] = shareUser
        }
        if superChapterId != nil{
            dictionary["superChapterId"] = superChapterId
        }
        if superChapterName != nil{
            dictionary["superChapterName"] = superChapterName
        }
        if tags != nil{
            dictionary["tags"] = tags
        }
        if title != nil{
            dictionary["title"] = title
        }
        if type != nil{
            dictionary["type"] = type
        }
        if userId != nil{
            dictionary["userId"] = userId
        }
        if visible != nil{
            dictionary["visible"] = visible
        }
        if zan != nil{
            dictionary["zan"] = zan
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         apkLink = aDecoder.decodeObject(forKey: "apkLink") as? String
         audit = aDecoder.decodeObject(forKey: "audit") as? Int
         author = aDecoder.decodeObject(forKey: "author") as? String
         canEdit = aDecoder.decodeObject(forKey: "canEdit") as? Bool
         chapterId = aDecoder.decodeObject(forKey: "chapterId") as? Int
         chapterName = aDecoder.decodeObject(forKey: "chapterName") as? String
         collect = aDecoder.decodeObject(forKey: "collect") as? Bool
         courseId = aDecoder.decodeObject(forKey: "courseId") as? Int
         desc = aDecoder.decodeObject(forKey: "desc") as? String
         descMd = aDecoder.decodeObject(forKey: "descMd") as? String
         envelopePic = aDecoder.decodeObject(forKey: "envelopePic") as? String
         fresh = aDecoder.decodeObject(forKey: "fresh") as? Bool
         host = aDecoder.decodeObject(forKey: "host") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         link = aDecoder.decodeObject(forKey: "link") as? String
         niceDate = aDecoder.decodeObject(forKey: "niceDate") as? String
         niceShareDate = aDecoder.decodeObject(forKey: "niceShareDate") as? String
         origin = aDecoder.decodeObject(forKey: "origin") as? String
         prefix = aDecoder.decodeObject(forKey: "prefix") as? String
         projectLink = aDecoder.decodeObject(forKey: "projectLink") as? String
         publishTime = aDecoder.decodeObject(forKey: "publishTime") as? Int
         realSuperChapterId = aDecoder.decodeObject(forKey: "realSuperChapterId") as? Int
         selfVisible = aDecoder.decodeObject(forKey: "selfVisible") as? Int
         shareDate = aDecoder.decodeObject(forKey: "shareDate") as? Int
         shareUser = aDecoder.decodeObject(forKey: "shareUser") as? String
         superChapterId = aDecoder.decodeObject(forKey: "superChapterId") as? Int
         superChapterName = aDecoder.decodeObject(forKey: "superChapterName") as? String
         tags = aDecoder.decodeObject(forKey: "tags") as? [AnyObject]
         title = aDecoder.decodeObject(forKey: "title") as? String
         type = aDecoder.decodeObject(forKey: "type") as? Int
         userId = aDecoder.decodeObject(forKey: "userId") as? Int
         visible = aDecoder.decodeObject(forKey: "visible") as? Int
         zan = aDecoder.decodeObject(forKey: "zan") as? Int

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if apkLink != nil{
            aCoder.encode(apkLink, forKey: "apkLink")
        }
        if audit != nil{
            aCoder.encode(audit, forKey: "audit")
        }
        if author != nil{
            aCoder.encode(author, forKey: "author")
        }
        if canEdit != nil{
            aCoder.encode(canEdit, forKey: "canEdit")
        }
        if chapterId != nil{
            aCoder.encode(chapterId, forKey: "chapterId")
        }
        if chapterName != nil{
            aCoder.encode(chapterName, forKey: "chapterName")
        }
        if collect != nil{
            aCoder.encode(collect, forKey: "collect")
        }
        if courseId != nil{
            aCoder.encode(courseId, forKey: "courseId")
        }
        if desc != nil{
            aCoder.encode(desc, forKey: "desc")
        }
        if descMd != nil{
            aCoder.encode(descMd, forKey: "descMd")
        }
        if envelopePic != nil{
            aCoder.encode(envelopePic, forKey: "envelopePic")
        }
        if fresh != nil{
            aCoder.encode(fresh, forKey: "fresh")
        }
        if host != nil{
            aCoder.encode(host, forKey: "host")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if link != nil{
            aCoder.encode(link, forKey: "link")
        }
        if niceDate != nil{
            aCoder.encode(niceDate, forKey: "niceDate")
        }
        if niceShareDate != nil{
            aCoder.encode(niceShareDate, forKey: "niceShareDate")
        }
        if origin != nil{
            aCoder.encode(origin, forKey: "origin")
        }
        if prefix != nil{
            aCoder.encode(prefix, forKey: "prefix")
        }
        if projectLink != nil{
            aCoder.encode(projectLink, forKey: "projectLink")
        }
        if publishTime != nil{
            aCoder.encode(publishTime, forKey: "publishTime")
        }
        if realSuperChapterId != nil{
            aCoder.encode(realSuperChapterId, forKey: "realSuperChapterId")
        }
        if selfVisible != nil{
            aCoder.encode(selfVisible, forKey: "selfVisible")
        }
        if shareDate != nil{
            aCoder.encode(shareDate, forKey: "shareDate")
        }
        if shareUser != nil{
            aCoder.encode(shareUser, forKey: "shareUser")
        }
        if superChapterId != nil{
            aCoder.encode(superChapterId, forKey: "superChapterId")
        }
        if superChapterName != nil{
            aCoder.encode(superChapterName, forKey: "superChapterName")
        }
        if tags != nil{
            aCoder.encode(tags, forKey: "tags")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
        if type != nil{
            aCoder.encode(type, forKey: "type")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "userId")
        }
        if visible != nil{
            aCoder.encode(visible, forKey: "visible")
        }
        if zan != nil{
            aCoder.encode(zan, forKey: "zan")
        }

    }

}
