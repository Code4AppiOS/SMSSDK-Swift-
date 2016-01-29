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
        //更换SMS－SDK 2.0 详情须知：http://bbs.mob.com/forum.php?mod=viewthread&tid=20051
        //如何在Mob后台添加一个应用 ：  http://bbs.mob.com/forum.php?mod=viewthread&tid=8212
        
        //初始化SMS－SDK ,在MOB后台注册应用并获得AppKey 和AppSecret
        SMSSDK.registerApp("ef0c55d2b850", withSecret: "62f2bf339354b721c1e0e97603630a15")
        
        //关闭访问通讯录
        SMSSDK.enableAppContactFriends(false)
        return true
    }

  

}

