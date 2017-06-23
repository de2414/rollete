//
//  ViewController.swift
//  rollette
//
//  Created by 林宥辰 on 2017/1/15.
//  Copyright © 2017年 林宥辰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //傳遞方
    var str = ""
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goSpin" {
            NSLog("來自ＶＣ", "gogo")
            let destVC = segue.destination as! RouletteViewController
            destVC.receiveData = str
            
        }
        
    }
   
    
    var mybetX35=[Int]()
    
    //X2
    var c1 = [Int]()
    var c2 = [Int]()
    var c3 = [Int]()
    var z1st = [Int]()
    var z2nd = [Int]()
    var z3rd = [Int]()
    
    //X1
    var even = [Int]()
    var black = [Int]()
    var odd = [Int]()
    var red = [Int]()
    var small = [Int]()
    var big = [Int]()
    
    
    
    @IBAction func c1(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            c1 = [1,4,7,10,13,16,19,22,25,28,31,34]
            zoneX2.c1to34 += betValue
        }
        zoneCost()
    }
    
    @IBAction func c2(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            c2 = [2,5,8,11,14,17,20,23,26,29,32,35]
            zoneX2.c2to35 += betValue
        }
        zoneCost()
    }
    
    @IBAction func c3(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            c3 = [3,6,9,12,15,18,21,24,27,30,33,36]
            zoneX2.c3to36 += betValue
        }
        zoneCost()
    }
    @IBAction func z1st(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            z1st = [1,2,3,4,5,6,7,8,9,10,11,12]
            zoneX2.z1st += betValue
        }
        zoneCost()
    }
    
    @IBAction func z2nd(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            z2nd = [13,14,15,16,17,18,19,20,21,22,23,24]
            zoneX2.z2nd += betValue
        }
        zoneCost()
    }
    @IBAction func z3rd(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            z3rd = [25,26,27,28,29,30,31,32,33,34,35,36]
            zoneX2.z3rd += betValue
        }
        zoneCost()
    }
    @IBAction func small(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            small = [1,2,3,4,5,6,7,8,9,10,1,12,13,14,15,16,17,18]
            zoneX1.small += betValue
        }
        zoneCost()
    }
    @IBAction func even(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            even = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36]
            zoneX1.even += betValue
        }
        zoneCost()
    }
    @IBAction func red(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            red = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35]
            zoneX1.red += betValue
        }
        zoneCost()
    }
    @IBAction func black(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            black = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36]
            zoneX1.big += betValue
        }
        zoneCost()
    }
    @IBAction func odd(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            odd = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35]
            zoneX1.odd += betValue
            
        }
        zoneCost()
    }
    @IBAction func big(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            big = [19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36]
            zoneX1.big += betValue
            
        }
        zoneCost()
    }
    
    
        
    
    @IBAction func b_0(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b0 += betValue
            v(0)
        }
        zoneCost()
        
        
    }
    @IBAction func b_36(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b36 += betValue
            v(36)
        }
        
        zoneCost()
        
    }
    @IBAction func b_35(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b35 += betValue
            v(35)
        }
        zoneCost()
        
    }
    @IBAction func b_34(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b34 += betValue
            v(34)
        }
        zoneCost()
        
    }
    @IBAction func b_33(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b33 += betValue
            v(33)
        }
        zoneCost()
        
    }
    @IBAction func b_32(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b32 += betValue
            v(32)
        }
        zoneCost()
        
    }
    @IBAction func b_31(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b31 += betValue
            v(31)
        }
        zoneCost()
        
    }
    @IBAction func b_30(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b30 += betValue
            v(30)
        }
        zoneCost()
        
    }
    @IBAction func b_29(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b29 += betValue
            v(29)
        }
        zoneCost()
        
    }
    @IBAction func b_28(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b28 += betValue
            v(28)
        }
        zoneCost()
        
    }
    @IBAction func b_27(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b27 += betValue
            v(27)
        }
        zoneCost()
        
    }
    @IBAction func b_26(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b26 += betValue
            v(26)
        }
        zoneCost()
        
    }
    @IBAction func b_25(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b25 += betValue
            v(25)
        }
        zoneCost()
        
    }
    @IBAction func b_24(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b24 += betValue
            v(24)
        }
        zoneCost()
        
    }
    @IBAction func b_23(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b23 += betValue
            v(23)
        }
        zoneCost()
        
    }
    @IBAction func b_22(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b22 += betValue
            v(22)
        }
        zoneCost()
        
    }
    @IBAction func b_21(_ sender: UIButton) {
        
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b21 += betValue
            v(21)
        }
        zoneCost()
        
    }
    @IBAction func b_20(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b20 += betValue
            v(20)
        }
        zoneCost()
        
    }
    @IBAction func b_19(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b19 += betValue
            v(19)
        }
        zoneCost()
        
    }
    @IBAction func b_18(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b18 += betValue
            v(18)
        }
        zoneCost()
        
    }
    @IBAction func b_17(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b17 += betValue
            v(17)
        }
        zoneCost()
        
    }
    @IBAction func b_16(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b16 += betValue
            v(16)
        }
        zoneCost()
        
    }
    @IBAction func b_15(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b15 += betValue
            v(15)
        }
        zoneCost()
        
    }
    @IBAction func b_14(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b14 += betValue
            v(14)
        }
        zoneCost()
        
    }
    @IBAction func b_13(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b13 += betValue
            v(13)
        }
        zoneCost()
        
    }
    @IBAction func b_12(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b12 += betValue
            v(12)
        }
        zoneCost()
        
    }
    @IBAction func b_11(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b11 += betValue
            v(11)
        }
        zoneCost()
        
    }
    @IBAction func b_10(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b10 += betValue
            v(10)
        }
        zoneCost()
        
    }
    @IBAction func b_9(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b9 += betValue
            v(9)
        }
        zoneCost()
    }
    @IBAction func b_8(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b8 += betValue
            v(8)
        }
        zoneCost()
    }
    @IBAction func b_7(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b7 += betValue
            v(7)
        }
        zoneCost()
    }
    @IBAction func b_6(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b6 += betValue
            v(6)
        }
        zoneCost()
        
        
    }
    @IBAction func b_5(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b5 += betValue
            v(5)
        }
        zoneCost()
        
    }
    @IBAction func b_4(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b4 += betValue
            v(4)
        }
        zoneCost()
        
        
    }
    @IBAction func b_3(_ sender: UIButton) {
        
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b3 += betValue
            v(3)
        }
        zoneCost()
        
        //btn_3.layer.contents = mychip
        
    }
    @IBAction func b_2(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b2 += betValue
            v(2)
        }
        zoneCost()
        
        
        
        
        
    }
    @IBAction func b_1(_ sender: UIButton) {
        if mycash-betValue>=0 && betValue > 0 {
            zoneX35.b1 += betValue
            v(1)
        }
        zoneCost()
        
        
    }
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var t_betValue: UILabel!
    
    @IBOutlet weak var t_cash: UILabel!
    
    //MARK:-所有宣告變數
    
    
    var zoneX35 =
        (b0:0,b1:0,b2:0,b3:0,b4:0,b5:0,b6:0,b7:0,b8:0,b9:0,b10:0,b11:0,b12:0,b13:0,b14:0,b15:0,b16:0,b17:0,b18:0,b19:0,b20:0,b21:0,b22:0,b23:0,b24:0,b25:0,b26:0,b27:0,b28:0,b29:0,b30:0,b31:0,b32:0,b33:0,b34:0,b35:0,b36:0)
    
    var zoneX1 = (black:0,red:0,even:0,odd:0,small:0,big:0)
    var zoneX2 = (z1st:0,z2nd:0,z3rd:0,c3to36:0,c2to35:0,c1to34:0)
    
    
    
    let mychip = UIImage(named: "1")?.cgImage
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func btn_clear(_ sender: UIButton) {
        
        if let plist = NSMutableDictionary(contentsOfFile: path){
            
            if let chips = plist["Bet"]{
                t_betValue.text = "\(chips)"
                betValue = 0
                print("清理成功")
                
                
            }
            
            plist["Bet"] = betValue
            if plist.write(toFile: path, atomically: true){
                
                if let betValue = plist["Bet"]{
                    t_betValue.text = "\(betValue)"
                }
            }
        }
    }
    
    @IBAction func btn_chip10k(_ sender: UIButton) {
        
        let t = chipCost(10000)
        print(t)
    }
    
    @IBAction func btn_chip5k(_ sender: UIButton) {
        let t = chipCost(5000)
        print(t)
        
    }
    
    @IBAction func btn_chip1k(_ sender: UIButton) {
        let t = chipCost(1000)
        print(t)
    }
    
    @IBAction func btn_chip500(_ sender: UIButton) {
        let t = chipCost(500)
        print(t)
    }
    
    @IBAction func btn_chip100(_ sender: UIButton) {
        let t = chipCost(100)
        print(t)
    }
    
    @IBAction func btn_chip50(_ sender: UIButton) {
        let t = chipCost(50)
        print(t)
    }
    
    @IBAction func btn_chip25(_ sender: UIButton) {
        let t = chipCost(25)
        print(t)
    }
    
    @IBAction func btn_chip10(_ sender: UIButton) {
        let t = chipCost(10)
        print(t)
    }
    
    @IBAction func btn_chip5(_ sender: UIButton) {
        let t = chipCost(5)
        print(t)
    }
    
    @IBAction func btn_chip1(_ sender: UIButton) {
        let t = chipCost(1)
        print(t)
        //chipCost(1)
    }
    
    //ok
    func chipCost(_ value:Int) -> Int {
        if let plist = NSMutableDictionary(contentsOfFile: path){
            
            if let chips = plist["Bet"]{
                t_betValue.text = "\(chips)"
                betValue = chips as! Int
                
                
                
            }
            if mycash-betValue>=value{
                betValue += value
                print("換籌碼:\(value)")
            }
            
            plist["Bet"] = betValue
            if plist.write(toFile: path, atomically: true){
                
                if let mybet = plist["Bet"]{
                    t_betValue.text = "\(mybet)"
                }
            }
        }
        return betValue
        
    }
    
    
    func zoneCost(){
        if let plist = NSMutableDictionary(contentsOfFile: path){
            
            if let cash = plist["Cash"]{
                t_cash.text = "\(cash)"
                mycash = cash as! Int
                
                
                
            }
            
            
            mycash -= betValue
            sum += betValue
            t_cash.text = "\(mycash)"
            
            print("下注成功:\(betValue)")
            print("累加:\(sum)")
            
            
            
            plist["Cash"] = mycash
            plist["sum"] = sum
            
            if plist.write(toFile: path, atomically: true){
                
                if let cash = plist["Cash"]{
                    t_cash.text = "\(cash)"
                }
                if let sum = plist["sum"]{
                    print("總下注金額\(sum)")
                }
                
            }
        }
    }
    
    func v(_ num:Int){
        if !mybetX35.contains(num) {
            mybetX35.append(num)
        }
    }
    public func ball()->Int{
        
        var point : Int
        point = Int(arc4random()%37)
        return point
    }

    
    @IBOutlet weak var spin: UIButton!
    
    @IBAction func spin(_ sender: UIButton) {
        let e = ball()
        str = String(e)
        
        
        func win(_ na:[Int]){
            print("win ball:\(str)\n your bet:\(na)")
           
        }
        
        if let plist = NSMutableDictionary(contentsOfFile: path){
            
            if let cash = plist["Cash"]{
                t_cash.text = "\(cash)"
                mycash = cash as! Int
                
            }
            
            
            
            if big.contains(e) {
                mycash += zoneX1.big
                win(big)
                
            }
            if small.contains(e) {
                mycash += zoneX1.small
                win(small)
                
            }
            if red.contains(e) {
                mycash += zoneX1.red
                win(red)
                
            }
            if black.contains(e) {
                mycash += zoneX1.black
                win(black)
                
            }
            if even.contains(e) {
                mycash += zoneX1.even
                win(even)
                
            }
            if odd.contains(e) {
                mycash += zoneX1.odd
                win(odd)
                
            }
            
            if z1st.contains(e) {
                mycash += zoneX2.z1st*2
                win(z1st)
                
            }
            if z2nd.contains(e) {
                mycash += zoneX2.z2nd*2
                win(z2nd)
                
            }
            if z3rd.contains(e) {
                mycash += zoneX2.z3rd*2
                win(z3rd)
                
            }
            if c1.contains(e) {
                mycash += zoneX2.c1to34*2
                win(c1)
                
            }
            if c2.contains(e) {
                mycash += zoneX2.c2to35*2
                win(c2)
                
            }
            if c3.contains(e) {
                mycash += zoneX2.c3to36*2
                win(c3)
                
            }
            
            if mybetX35.contains(e) {
                print("you win on \(e)")
                switch e {
                case 0:
                    mycash += zoneX35.b0*35
                case 1:
                    mycash += zoneX35.b1*35
                case 2:
                    mycash += zoneX35.b2*35
                case 3:
                    mycash += zoneX35.b3*35
                case 4:
                    mycash += zoneX35.b4*35
                case 5:
                    mycash += zoneX35.b5*35
                case 6:
                    mycash += zoneX35.b6*35
                case 7:
                    mycash += zoneX35.b7*35
                case 8:
                    mycash += zoneX35.b8*35
                case 9:
                    mycash += zoneX35.b9*35
                case 10:
                    mycash += zoneX35.b10*35
                case 11:
                    mycash += zoneX35.b11*35
                case 12:
                    mycash += zoneX35.b12*35
                case 13:
                    mycash += zoneX35.b13*35
                case 14:
                    mycash += zoneX35.b14*35
                case 15:
                    mycash += zoneX35.b15*35
                case 16:
                    mycash += zoneX35.b16*35
                case 17:
                    mycash += zoneX35.b17*35
                case 18:
                    mycash += zoneX35.b18*35
                case 19:
                    mycash += zoneX35.b19*35
                case 20:
                    mycash += zoneX35.b20*35
                case 21:
                    mycash += zoneX35.b21*35
                case 22:
                    mycash += zoneX35.b22*35
                case 23:
                    mycash += zoneX35.b23*35
                case 24:
                    mycash += zoneX35.b24*35
                case 25:
                    mycash += zoneX35.b25*35
                case 26:
                    mycash += zoneX35.b26*35
                case 27:
                    mycash += zoneX35.b27*35
                case 28:
                    mycash += zoneX35.b28*35
                case 29:
                    mycash += zoneX35.b29*35
                case 30:
                    mycash += zoneX35.b30*35
                case 31:
                    mycash += zoneX35.b31*35
                case 32:
                    mycash += zoneX35.b32*35
                case 33:
                    mycash += zoneX35.b33*35
                case 34:
                    mycash += zoneX35.b34*35
                case 35:
                    mycash += zoneX35.b35*35
                case 36:
                    mycash += zoneX35.b36*35
                default:
                    break
                }
                
                
                
            }
            
         
            plist["Cash"]=mycash
            
            if plist.write(toFile: path, atomically: true){
                
                if let cash = plist["Cash"]{
                    t_cash.text = "\(cash)"
                    
                    
                }
                if let bet = plist["Bet"] {
                    t_betValue.text = "\(bet)"
                }
                
            }
            
            
            sum = 0
            mycash+=0
            print("ball:\(e)")
            //print("單注：\(mybetX35.description)")
            mybetX35.removeAll()
            big.removeAll()
            small.removeAll()
            red.removeAll()
            black.removeAll()
            odd.removeAll()
            even.removeAll()
            
            z1st.removeAll()
            z2nd.removeAll()
            z3rd.removeAll()
            c1.removeAll()
            c2.removeAll()
            c3.removeAll()
            
            zoneX35 = (b0:0,b1:0,b2:0,b3:0,b4:0,b5:0,b6:0,b7:0,b8:0,b9:0,b10:0,b11:0,b12:0,b13:0,b14:0,b15:0,b16:0,b17:0,b18:0,b19:0,b20:0,b21:0,b22:0,b23:0,b24:0,b25:0,b26:0,b27:0,b28:0,b29:0,b30:0,b31:0,b32:0,b33:0,b34:0,b35:0,b36:0)
            
            zoneX1 = (black:0,red:0,even:0,odd:0,small:0,big:0)
            zoneX2 = (z1st:0,z2nd:0,z3rd:0,c3to36:0,c2to35:0,c1to34:0)
            
            performSegue(withIdentifier: "goSpin", sender: nil)
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
                
        
    }
    override func viewWillAppear(_ animated: Bool) {
        if let plist = NSMutableDictionary(contentsOfFile: path){
            if let cash = plist["Cash"]{
                t_cash.text = "\(cash)"
                mycash = cash as! Int
            }
            if let chips = plist["Bet"]{
                t_betValue.text = "\(chips)"
                betValue = chips as! Int
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

