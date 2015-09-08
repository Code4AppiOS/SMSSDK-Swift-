//
//  ViewController.swift
//  SMS-SDK(Swift)
//
//  Created by lisk@uuzu.com on 15/9/8.
//  Copyright (c) 2015年 MOB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhoneNumber: UITextField!
    @IBOutlet weak var VerificationCode: UITextField!
    
    @IBAction func PhoneNumberSumbit(sender: UIButton) {
        // zone：次参数可以写死，也可以使用‘+(void)getZone:(GetZoneBlock)result;’通过网络请求的方式获取区号
        SMS_SDK.getVerificationCodeBySMSWithPhone(PhoneNumber.text, zone: "86") { (error:SMS_SDKError!) in
            
            if(error == nil){
                print("请求成功,请等待短信～")
            }else{
                // 错误码可以参考‘SMS_SDKError.h’
                print("请求失败")
            }
        }
    }
    
    @IBAction func VerificationCodeSumbit(sender: UIButton) {
        SMS_SDK.commitVerifyCode(VerificationCode.text, result: { (state:SMS_ResponseState) in
            
            if(state.value == 1){
                print("验证成功")
            }else{
                print("验证失败")
            }
        })
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

