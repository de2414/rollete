//
//  RouletteViewController.swift
//  rollette
//
//  Created by 林宥辰 on 2017/1/16.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import UIKit

class RouletteViewController: UIViewController {
    //接收方
    var receiveData: String!

    
    @IBOutlet weak var showDetail: UILabel!
    
    @IBOutlet weak var plate: UIImageView!

    @IBOutlet weak var tt: UILabel!
    
    
    
    @IBAction func quit(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
//    public static func ball()->Int{
//        
//        var point : Int
//        point = Int(arc4random()%37)
//        return point
//    }
//        
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.fromValue = 0
        animation.toValue = 2*M_PI
        animation.duration = 2
        animation.repeatCount = 8
        self.plate.layer .add(animation, forKey: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(1 * NSEC_PER_SEC))/Double(NSEC_PER_SEC) , execute: {
            print("delay print")
            AlertDialog.winGame(self)
            self.tt.text = self.receiveData
           
            
        })
        
        
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
