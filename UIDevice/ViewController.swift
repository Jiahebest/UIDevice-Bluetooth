//
//  ViewController.swift
//  UIDevice
//
//  Created by gdcp on 2018/5/28.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIDevice.current.systemVersion)
        NotificationCenter.default.addObserver(self, selector: #selector(notice), name: NSNotification.Name.UIDeviceProximityStateDidChange, object: nil)
    }
    func notice(){
        if UIDevice.current.proximityState{
            print("远")
        }else{
            print("close")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

