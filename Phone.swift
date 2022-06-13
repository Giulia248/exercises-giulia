//
//  Phone.swift
//  Shop
//  Phone
//  
//
//  Created by user on 10/06/22.
//

import Foundation
class Phone{
    //attributi
    private var modello: String
    private var prezzo: Int
    private var id: Int
    private var dualSim: Bool
    private var marca: String
    private var charge = true
    init(modello: String, marca: String, prezzo: Int, id: Int, dualSim: Bool){
        
        self.modello = modello
        self.prezzo = prezzo
        self.id = id
        self.marca = marca
        self.dualSim = dualSim
        
    }
    
    //metodi get
    func getModello() -> String{
        return modello
    }
    func getPrezzo() -> Int{
        return prezzo
    }
    func getId() -> Int{
        return id
    }
    func getDualSim() -> Bool{
        return dualSim
    }
    func getMarca() -> String{
        return marca
    }
    func getCharge() -> Bool{
        return charge
    }
    
    //metodi set
    func exhaustPhone(){
        charge = false
    }
    func chargePhone(){
        charge = true
    }
}

class Shop{
    
    internal var Iphone1 = Phone(modello: "IPhone 1", marca: "Apple", prezzo: 500, id: 111, dualSim: false)
    internal var Iphone2 = Phone(modello: "IPhone 2", marca: "Apple", prezzo: 550, id: 112, dualSim: false)
    internal var Iphone3 = Phone(modello: "IPhone 3", marca: "Apple", prezzo: 600, id: 113, dualSim: false)
    internal var Iphone4 = Phone(modello: "IPhone 4", marca: "Apple", prezzo: 650, id: 114, dualSim: false)
    
    internal var SamsungA1 = Phone(modello: "SamsungA1", marca: "Samsung", prezzo: 200, id: 211, dualSim: true)
    internal var SamsungA2 = Phone(modello: "SamsungA2", marca: "Samsung", prezzo: 250, id: 212, dualSim: false)
    internal var SamsungA3 = Phone(modello: "SamsungA3", marca: "Samsung", prezzo: 300, id: 213, dualSim: true)
    internal var SamsungA4 = Phone(modello: "SamsungA4", marca: "Samsung", prezzo: 350, id: 214, dualSim: false)
    
    func list(){
        
        print("1 Iphone1")
        print(Iphone1.getPrezzo())
        usleep(100000)
        print("2 Iphone2")
        print(Iphone2.getPrezzo())
        usleep(100000)
        print("3 Iphone3")
        print(Iphone3.getPrezzo())
        usleep(100000)
        print("4 Iphone4")
        print(Iphone4.getPrezzo())
        usleep(100000)
        print("5 SamsungA1")
        print(SamsungA1.getPrezzo())
        usleep(100000)
        print("6 SamsungA2")
        print(SamsungA2.getPrezzo())
        usleep(100000)
        print("7 SamsungA3")
        print(SamsungA3.getPrezzo())
        usleep(100000)
        print("8 SamsungA4")
        print(SamsungA4.getPrezzo())
        
    }
    func buy(choice: Int) -> Phone{
        
        var newPhone = Iphone1
        switch choice{
        case 1:
            newPhone = Iphone1
        case 2:
            newPhone =  Iphone2
        case 3:
            newPhone =  Iphone3
        case 4:
            newPhone =  Iphone4
        case 5:
            newPhone =  SamsungA1
        case 6:
            newPhone =  SamsungA2
        case 7:
            newPhone =  SamsungA3
        case 8:
            newPhone =  SamsungA4
        default:
            print("")
            
        }
        return newPhone
    }
}
    
