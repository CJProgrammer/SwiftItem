//
//  AppDelegate.swift
//  3DTouch
//
//  Created by CJ on 2017/7/20.
//  Copyright © 2017年 CJ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        setup3DTouch(application: application)
        
        return true
    }
    
    func setup3DTouch(application:UIApplication) {
        /**
         type 该item 唯一标识符
         localizedTitle ：标题
         localizedSubtitle：副标题
         icon：icon图标 可以使用系统类型 也可以使用自定义的图片
         userInfo：用户信息字典 自定义参数，完成具体功能需求
         */
        
        let scanIcon = UIApplicationShortcutIcon.init(templateImageName: "1")
        let scanItem = UIApplicationShortcutItem.init(type: "scan", localizedTitle: "扫啊扫", localizedSubtitle:nil, icon: scanIcon, userInfo: nil)
        
        let logisticsIcon = UIApplicationShortcutIcon.init(templateImageName: "2")
        let logisticsItem = UIApplicationShortcutItem.init(type: "logistics", localizedTitle: "查物流", localizedSubtitle:nil, icon: logisticsIcon, userInfo: nil)
        
        let killIcon = UIApplicationShortcutIcon.init(type:.time)
        let killItem = UIApplicationShortcutItem.init(type: "kill", localizedTitle: "秒杀", localizedSubtitle:"秒杀什么嘞？", icon: killIcon, userInfo: nil)
        
        let searchIcon = UIApplicationShortcutIcon.init(type:.search)
        let searchItem = UIApplicationShortcutItem.init(type: "search", localizedTitle: "搜索", localizedSubtitle:nil, icon: searchIcon, userInfo: nil)

        /** 将items 添加到app图标 */
        application.shortcutItems = [scanItem,logisticsItem,killItem,searchItem];
        
    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        // Handle quick actions
        let nav:UINavigationController = window?.rootViewController as! UINavigationController
        
        if shortcutItem.type == "scan" {
            let vc = UIViewController()
            vc.title = "扫啊扫"
            vc.view.backgroundColor = UIColor.red
            nav.pushViewController(vc, animated: true)
        } else if shortcutItem.type == "logistics" {
            let vc = UIViewController()
            vc.title = "查物流"
            vc.view.backgroundColor = UIColor.blue
            nav.pushViewController(vc, animated: true)
        } else if shortcutItem.type == "kill" {
            let vc = UIViewController()
            vc.title = "秒杀"
            vc.view.backgroundColor = UIColor.blue
            nav.pushViewController(vc, animated: true)
        } else if shortcutItem.type == "search" {
            let vc = UIViewController()
            vc.title = "搜索"
            vc.view.backgroundColor = UIColor.blue
            nav.pushViewController(vc, animated: true)
        }
    }


}

