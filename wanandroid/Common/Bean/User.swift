//
//  User.swift
//  wanandroid
//
//  Created by sunshine on 2021/9/14.
//

import Foundation

class User : NSObject, NSCoding{

    var admin : Bool!
    var chapterTops : [AnyObject]!
    var coinCount : Int!
    var collectIds : [Int]!
    var email : String!
    var icon : String!
    var id : Int!
    var nickname : String!
    var password : String!
    var publicName : String!
    var token : String!
    var type : Int!
    var username : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        admin = dictionary["admin"] as? Bool
        chapterTops = dictionary["chapterTops"] as? [AnyObject]
        coinCount = dictionary["coinCount"] as? Int
        collectIds = dictionary["collectIds"] as? [Int]
        email = dictionary["email"] as? String
        icon = dictionary["icon"] as? String
        id = dictionary["id"] as? Int
        nickname = dictionary["nickname"] as? String
        password = dictionary["password"] as? String
        publicName = dictionary["publicName"] as? String
        token = dictionary["token"] as? String
        type = dictionary["type"] as? Int
        username = dictionary["username"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if admin != nil{
            dictionary["admin"] = admin
        }
        if chapterTops != nil{
            dictionary["chapterTops"] = chapterTops
        }
        if coinCount != nil{
            dictionary["coinCount"] = coinCount
        }
        if collectIds != nil{
            dictionary["collectIds"] = collectIds
        }
        if email != nil{
            dictionary["email"] = email
        }
        if icon != nil{
            dictionary["icon"] = icon
        }
        if id != nil{
            dictionary["id"] = id
        }
        if nickname != nil{
            dictionary["nickname"] = nickname
        }
        if password != nil{
            dictionary["password"] = password
        }
        if publicName != nil{
            dictionary["publicName"] = publicName
        }
        if token != nil{
            dictionary["token"] = token
        }
        if type != nil{
            dictionary["type"] = type
        }
        if username != nil{
            dictionary["username"] = username
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         admin = aDecoder.decodeObject(forKey: "admin") as? Bool
         chapterTops = aDecoder.decodeObject(forKey: "chapterTops") as? [AnyObject]
         coinCount = aDecoder.decodeObject(forKey: "coinCount") as? Int
         collectIds = aDecoder.decodeObject(forKey: "collectIds") as? [Int]
         email = aDecoder.decodeObject(forKey: "email") as? String
         icon = aDecoder.decodeObject(forKey: "icon") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         nickname = aDecoder.decodeObject(forKey: "nickname") as? String
         password = aDecoder.decodeObject(forKey: "password") as? String
         publicName = aDecoder.decodeObject(forKey: "publicName") as? String
         token = aDecoder.decodeObject(forKey: "token") as? String
         type = aDecoder.decodeObject(forKey: "type") as? Int
         username = aDecoder.decodeObject(forKey: "username") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if admin != nil{
            aCoder.encode(admin, forKey: "admin")
        }
        if chapterTops != nil{
            aCoder.encode(chapterTops, forKey: "chapterTops")
        }
        if coinCount != nil{
            aCoder.encode(coinCount, forKey: "coinCount")
        }
        if collectIds != nil{
            aCoder.encode(collectIds, forKey: "collectIds")
        }
        if email != nil{
            aCoder.encode(email, forKey: "email")
        }
        if icon != nil{
            aCoder.encode(icon, forKey: "icon")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if nickname != nil{
            aCoder.encode(nickname, forKey: "nickname")
        }
        if password != nil{
            aCoder.encode(password, forKey: "password")
        }
        if publicName != nil{
            aCoder.encode(publicName, forKey: "publicName")
        }
        if token != nil{
            aCoder.encode(token, forKey: "token")
        }
        if type != nil{
            aCoder.encode(type, forKey: "type")
        }
        if username != nil{
            aCoder.encode(username, forKey: "username")
        }

    }

}

class UserResponse : NSObject, NSCoding{

    var user : User!
    var errorCode : Int!
    var errorMsg : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let dataData = dictionary["data"] as? [String:Any]{
            user = User(fromDictionary: dataData)
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
        if user != nil{
            dictionary["data"] = user.toDictionary()
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
         user = aDecoder.decodeObject(forKey: "data") as? User
         errorCode = aDecoder.decodeObject(forKey: "errorCode") as? Int
         errorMsg = aDecoder.decodeObject(forKey: "errorMsg") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if user != nil{
            aCoder.encode(user, forKey: "data")
        }
        if errorCode != nil{
            aCoder.encode(errorCode, forKey: "errorCode")
        }
        if errorMsg != nil{
            aCoder.encode(errorMsg, forKey: "errorMsg")
        }

    }

}
