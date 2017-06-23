//
//  AlertDialog.swift
//  rollette
//
//  Created by 林宥辰 on 2017/6/23.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import UIKit

class AlertDialog: NSObject {
    
    public static func alert(_ view:UIViewController,_ cash:Int){
        let alert = UIAlertController(title: "前往AppStore", message: "是否確定購買", preferredStyle: UIAlertControllerStyle.actionSheet)
        let alertAction = UIAlertAction(title: "YES", style: .default) { (alertAction) in
            addCash(cash)
            success(view)
        }
        let cancel = UIAlertAction(title: "NO", style: .default, handler: nil)
        alert.addAction(alertAction)
        alert.addAction(cancel)
        
        view.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    public static func success(_ view:UIViewController){
        let alert = UIAlertController(title: "加值成功", message: "謝謝您的惠顧 目前餘額：\(mycash)", preferredStyle: UIAlertControllerStyle.actionSheet)
        let alertAction = UIAlertAction(title: "YES", style: .default,handler:nil)
        
        alert.addAction(alertAction)
        
        
        view.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    public static func winGame(_ view:UIViewController){
        
        if let plist = NSMutableDictionary(contentsOfFile: path){
            
            if let mysum = plist["sum"]{
                
                sum = mysum as! Int
                
                
                
            }
            
            let alert = UIAlertController(title: "結果", message: "目前總額:\(mycash),本次下注金額:\(sum)", preferredStyle: UIAlertControllerStyle.actionSheet)
            let alertAction = UIAlertAction(title: "YES", style: .default,handler:nil)
            
            alert.addAction(alertAction)
            
            
            view.present(alert, animated: true, completion: nil)

            sum = 0
            plist["sum"]=sum
        }
        
        
        
        
    }


}
