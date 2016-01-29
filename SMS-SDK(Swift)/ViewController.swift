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
        
        // zone：此参数可以写死，也可以使用 +(void)getCountryZone:(SMSGetZoneResultHandler)result; 通过网络请求的方式获取区号，此方法在'SMS_SDK.framework / SMSSDK+ExtexdMethods.h中'
        SMSSDK.getVerificationCodeByMethod(SMSGetCodeMethodSMS, phoneNumber: PhoneNumber.text, zone: "86", customIdentifier: nil) { (error : NSError!) -> Void in
        
            if (error == nil)
            {
                 print("请求成功,请等待短信～")
            }
            else
            {
                // 错误码可以参考‘SMS_SDK.framework / SMSSDKResultHanderDef.h’
                print("请求失败", error)
            }
        }
    }
    
    @IBAction func VerificationCodeSumbit(sender: UIButton) {
        
        SMSSDK.commitVerificationCode(VerificationCode.text, phoneNumber: PhoneNumber.text, zone: "86") { (error : NSError!) -> Void in
            if(error == nil){
                print("验证成功")
            }else{
                print("验证失败", error)
            }
        }
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

