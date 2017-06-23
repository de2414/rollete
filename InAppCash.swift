//
//  InAppCash.swift
//  rollette
//
//  Created by 林宥辰 on 2017/6/23.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import Foundation

import UIKit

class InAppCash: UIViewController {
    
    
    @IBAction func out(_ sender: UIButton) {
        dismiss(animated: true) {
            //彈出視窗 alert
        }
    }
    
    @IBOutlet weak var buy30: UIButton!
    @IBAction func buy30(_ sender: UIButton) {
        AlertDialog.alert(self,2000)
        
    }
    @IBAction func buy150(_ sender: UIButton) {
        AlertDialog.alert(self,12000)
    }
    @IBAction func buy300(_ sender: UIButton) {
        AlertDialog.alert(self,30000)
        
    }
    
    @IBAction func buy750(_ sender: UIButton) {
        AlertDialog.alert(self,100000)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
