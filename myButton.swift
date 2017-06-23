//
//  myButton.swift
//  rollette
//
//  Created by 林宥辰 on 2017/1/19.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import UIKit

class myButton: UIButton {
    
    
    
    let mychip = UIImage(named: "1")?.cgImage
    
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
//        self.layer.borderWidth = 1
//        self.layer.borderColor = UIColor.yellow.cgColor
        
        //self.layer.contents = mychip
        
        
        
        
    }

}
