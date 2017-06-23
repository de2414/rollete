//
//  Cash.swift
//  rollette
//
//  Created by 林宥辰 on 2017/6/23.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import Foundation
import UIKit

public let path = NSHomeDirectory()+"/Documents/save.plist"
public var mycash = 0
public var betValue = 0
public var sum = 0


public func addCash(_ value:Int){
    if let plist = NSMutableDictionary(contentsOfFile: path){
        
        if let cash = plist["Cash"]{
            
            mycash = cash as! Int
            
            
            
        }
        mycash += value
        plist["Cash"] = mycash
        if plist.write(toFile: path, atomically: true){
            print("加值成功:\(value)")
            if let cash = plist["Cash"]{
                
                print(cash)
            }
        }
    }
}

