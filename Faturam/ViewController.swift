//
//  ViewController.swift
//  Faturam
//
//  Created by Enes EMINLER on 5.06.2018.
//  Copyright © 2018 Enes EMINLER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ToplamKDV: UILabel!
    @IBOutlet weak var GenelToplam: UILabel!
    @IBOutlet weak var Toplam: UILabel!
    
   
    @IBOutlet weak var KDVSec: UISegmentedControl!
    
    @IBOutlet weak var Fiyat1: RoundedText!
    @IBOutlet weak var Fiyat2: RoundedText!
    @IBOutlet weak var Fiyat3: RoundedText!
    @IBOutlet weak var Fiyat4: RoundedText!
    @IBOutlet weak var Fiyat5: RoundedText!
    
    @IBOutlet weak var Adet1: RoundedText!
    @IBOutlet weak var Adet2: RoundedText!
    @IBOutlet weak var Adet3: RoundedText!
    @IBOutlet weak var Adet4: RoundedText!
    @IBOutlet weak var Adet5: RoundedText!
    
    @IBOutlet weak var Kdv1: RoundedLabel!
    @IBOutlet weak var Kdv2: RoundedLabel!
    @IBOutlet weak var Kdv3: RoundedLabel!
    @IBOutlet weak var Kdv4: RoundedLabel!
    @IBOutlet weak var Kdv5: RoundedLabel!
    
    @IBOutlet weak var Toplam1: RoundedLabel!
    @IBOutlet weak var Toplam2: RoundedLabel!
    @IBOutlet weak var Toplam3: RoundedLabel!
    @IBOutlet weak var Toplam4: RoundedLabel!
    @IBOutlet weak var Toplam5: RoundedLabel!
    
    var TOPLAM = 0
    var GENELTOPLAM = 0
    var KDVTOPLAM = 0
    var KDV = 18
    
    let F1 : Float = 0
    let F2 : Float = 0
    let F3 : Float = 0
    let F4 : Float = 0
    let F5 : Float = 0
    
    var A1 = 1, A2 = 1, A3 = 1, A4 = 1, A5 = 1
   
    let T1 : Float = 0
    let T2 : Float = 0
    let T3 : Float = 0
    let T4 : Float = 0
    let T5 : Float = 0
    
    let K1 : Float = 0
    let K2 : Float = 0
    let K3 : Float = 0
    let K4 : Float = 0
    let K5 : Float = 0
    
 
    @IBAction func KDV(_ sender: UISegmentedControl) {
        switch KDVSec.selectedSegmentIndex
        {
        case 0:
           KDV = 8
           Hesapla((Any).self)
        case 1:
           KDV = 10
           Hesapla((Any).self)
        case 2:
           KDV = 18
           Hesapla((Any).self)
        default:
            break
        }
    }
    func KdvCikar(a: Int) -> Float{
        let b : Float = Float(100 + KDV)
        let e : Float = Float(a)
        let c : Float = (e/b)
        let d : Float = c*100
        return d
    }
    
    func Topla(a:Int, b:Float) -> Float {
        let c : Float = Float(a)
        let d : Float = c*b
        return d
    }
  
  
    @IBAction func Hesapla(_ sender: Any) {
        
        Toplam.text = "0"
        let TOPLAM : Float = Float(0)
        func TTT(a: Float){
            let b = (Toplam.text! as NSString).floatValue
            let TOPLAM = b + a
            Toplam.text = String(TOPLAM)
        }
        
         ToplamKDV.text = "0"
        let KDVTOPLAM : Float = Float(0)
        func KKK(a: Float, b: Int){
            let t = a * Float(b)
            let c = (ToplamKDV.text! as NSString).floatValue
            let KDVTOPLAM = c + t
            ToplamKDV.text = String(KDVTOPLAM)
        }
        
        GenelToplam.text = "0"
        let GENELTOPLAM : Float = Float(0)
        func GGG(){
          let a = (Toplam.text! as NSString).floatValue
          let b = (ToplamKDV.text! as NSString).floatValue
          let c = a + b
          GenelToplam.text = String(c)
        }
        
        if let F1 = Float(Fiyat1.text!){
            let K1 = KdvCikar(a: Int(F1))
            Kdv1.text = String(K1)
            let KF1 = F1 - K1
            if let A1 = Int(Adet1.text!){
                let T1 = Topla(a: A1,b: K1)
                Toplam1.text = String(T1)
                TTT(a: T1)
                KKK(a: KF1, b: A1)
            }else{
                Toplam1.text = String(K1)
                TTT(a: K1)
                KKK(a: KF1, b:1)
            }
        }
        
        if let F2 = Float(Fiyat2.text!){
            let K2 = KdvCikar(a: Int(F2))
            Kdv2.text = String(K2)
            let KF2 = F2 - K2
                if let A2 = Int(Adet2.text!){
                let T2 = Topla(a: A2,b: K2)
                Toplam2.text = String(T2)
                    TTT(a: T2)
                    KKK(a: KF2, b: A2)
                    
                }else{
                    Toplam2.text = String(K2)
                    TTT(a: K2)
                    KKK(a: KF2, b: 1)
            }
        }
        
        if let F3 = Float(Fiyat3.text!){
            let K3 = KdvCikar(a: Int(F3))
            Kdv3.text = String(K3)
            let KF3 = F3 - K3
                if let A3 = Int(Adet3.text!){
                    let T3 = Topla(a: A3,b: K3)
                Toplam3.text = String(T3)
                TTT(a: T3)
                    KKK(a: KF3, b: A3)
                }else{
                    Toplam3.text = String(K3)
                    TTT(a: K3)
                    KKK(a: KF3, b: 1)
            }
        }
        if let F4 = Float(Fiyat4.text!){
            let K4 = KdvCikar(a: Int(F4))
            Kdv4.text = String(K4)
            let KF4 = F4 - K4
                if let A4 = Int(Adet4.text!){
                    let T4 = Topla(a: A4,b: K4)
                Toplam4.text = String(T4)
               TTT(a: T4)
                    KKK(a: KF4, b: A4)
                }else{
                    Toplam4.text = String(K4)
                    TTT(a: K4)
                    KKK(a: KF4, b: 1)
            }
        }
        if let F5 = Float(Fiyat5.text!){
            let K5 = KdvCikar(a: Int(F5))
            Kdv5.text = String(K5)
            let KF5 = F5 - K5
                if let A5 = Int(Adet5.text!){
                    let T5 = Topla(a: A5,b: K5)
                Toplam5.text = String(T5)
               TTT(a: T5)
                    KKK(a: KF5, b: A5)
                }else{
                    Toplam5.text = String(K5)
                    TTT(a: K5)
                    KKK(a: KF5, b: 1)
            }
        }
        
        GGG()
    
    }
    
    @IBAction func Temizle(_ sender: Any) {
       Toplam1.text = nil
       Toplam2.text = nil
       Toplam3.text = nil
       Toplam4.text = nil
       Toplam5.text = nil
        
        Kdv1.text = nil
        Kdv2.text = nil
        Kdv3.text = nil
        Kdv4.text = nil
        Kdv5.text = nil
        
        Adet1.text = nil
        Adet2.text = nil
        Adet3.text = nil
        Adet4.text = nil
        Adet5.text = nil
        
        Fiyat1.text = nil
        Fiyat2.text = nil
        Fiyat3.text = nil
        Fiyat4.text = nil
        Fiyat5.text = nil
        
        Toplam.text = nil
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

}

