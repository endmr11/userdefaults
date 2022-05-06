//
//  ViewController.swift
//  udemy_userdefault
//
//  Created by Eren Demir on 6.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SharedPreferences benzeri
        let localStorage = UserDefaults.standard
        
        //Veri oluşturma
        localStorage.set("Eren Demir", forKey: "ad")
        localStorage.set(40, forKey: "yas")
        localStorage.set(1.10, forKey: "boy")
        localStorage.set(true, forKey: "medeniDurum")
        let arkadaslar = ["Ahmet","Mehmet","Murat"]
        localStorage.set(arkadaslar, forKey: "arkadaslar")
        let sehirler:[String:String] = ["60":"Tokat","34":"İstanbul"]
        localStorage.set(sehirler, forKey: "sehirler")
        
        //Veri okuma
        let ad = localStorage.string(forKey: "ad") ?? "Ad yok"
        let yas = localStorage.integer(forKey: "yas")
        let boy = localStorage.double(forKey: "boy")
        let medeniDurum = localStorage.bool(forKey: "medeniDurum")
        let myArkadaslar = localStorage.array(forKey: "arkadaslar") as? [String]  ?? [String]()
        let mySehirler = localStorage.dictionary(forKey: "sehirler") as? [String:String] ?? [String:String]()
        
        print("Ad: \(ad)")
        print("Yas: \(yas)")
        print("Boy: \(boy)")
        print("Medeni Durum: \(medeniDurum)")
        print("Arkadaşlar listesi: \(myArkadaslar)")
        print("Şehirler Dictionary \(mySehirler)")
        
        //Veri Güncelleme
        localStorage.set("Eren Demiirr", forKey: "ad")
        let adx = localStorage.string(forKey: "ad") ?? "Ad yok"
        print("Güncellenen Ad: \(adx)")
        
        //Veri Silme
        localStorage.removeObject(forKey: "ad")
        let ady = localStorage.string(forKey: "ad") ?? "Ad yok"
        print("Ad: \(ady)")
        

        
    }


}

