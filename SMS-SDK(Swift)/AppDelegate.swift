//
//  AppDelegate.swift
//  SMS-SDK(Swift)
//
//  Created by lisk@uuzu.com on 15/9/8.
//  Copyright (c) 2015年 MOB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        //初始化SMS－SDK
        SMS_SDK.registerApp("9d05b3e22722", withSecret: "931f48b5594757d0b87af3fa941d23eb")
        
        //关闭访问通讯录
        SMS_SDK.enableAppContactFriends(false)
        return true
    }

  

}

