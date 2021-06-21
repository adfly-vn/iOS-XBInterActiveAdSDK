//
//  ViewController.swift
//  test2
//
//  Created by 全尼古拉斯 on 2020/9/9.
//  Copyright © 2020 全尼古拉斯. All rights reserved.
//

import UIKit
import XBInterActiveAdSDK

let appKey = "vnntest0529"
let appSecret = "9a19fab1935aba50f1fd5a6bdb442172"
let widgetId = "986"


let soltId: Int64 = 1

class ViewController: UIViewController {
    var customView: UIView?
    var button: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button = UIButton.init(frame: CGRect.init(x: 50, y: 100, width: 300, height: 60))
        button?.setTitle("close Ad Action", for: .normal)
        button?.addTarget(self, action: #selector(onClickClose), for: .touchUpInside)
        button?.backgroundColor = UIColor.red
        self.view.addSubview(button!)
        
        
        customView = UIView.init(frame: CGRect.init(x: 0, y: UIScreen.main.bounds.height / 2, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2))
        self.view.addSubview(customView!)
        
        XBInterActiveAdManager.shared.start(appKey: appKey, appSecret: appSecret, complete: { (error) in
            if error == nil {
                print("注册成功")
                DispatchQueue.main.async {
                    self.show()
                    print("")
                }
            }
        })
        
    }

    @objc func onClickClose() {
        XBInterActiveAdManager.shared.clearAd(tag: 1024, customView: customView!)
    }
    
    func show() {
        
        XBInterActiveAdManager.shared.showAd(widgetId: widgetId, scale: 2, tag: 1024, customView: customView!, onShowAction: {
            print("广告展示")
        }, onClickAction: {
            print("用户点击")
        }, onCloseAction: {
            print("用户关闭")
        }, onLoadFailed: { (error) in
            print("显示失败")
        }, onClearAction: {
            print("主动清除广告")
        })
    }
}
