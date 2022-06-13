//
//  Pokemon.swift
//  Objects1
//
//  Created by user on 09/06/22.
//
import Foundation
class myPokemon{
    //initialize elements
    private var name: String
    private var hp: Int
    private var alive = true
    init(name: String, hp: Int){
        self.name = name
        self.hp = hp
    }
    
    //attacco
    func attk() -> Int{
        print("\(name) attacca!")
        let losehp = Int.random(in: 1...4)
        if losehp == 4{
            print("attacco critico!!")
        }
        if losehp == 1{
            print("attacco debole!!")
        }
        
            usleep(100000)
            return losehp
    }
    //perdita dopo un attacco
    func loseHp(atk: Int){
        if alive{
            hp -= atk
            if hp < 1{
                alive = false
            }
        }
    }
    
    //é vivo
    func isAlive() -> Bool{
        return alive
    }
    
    //randomPkm
    func randomPkm() -> String{
        let arr = ["Butterfree", "Gyarados", "Zorua", "Crobat", "Electabuzz", "Spoink"]
        return arr[Int.random(in: 0...5)]
    }
    
    func startFight(){
    var combat = 0
while (combat == 0){
    
    
    print("Inizia il combattimento, scegli il tuo Pokemon")
    print("1    Butterfree")
    print("2    Gyarados")
    print("3    Zorua")
    print("4    Crobat")
    print("5    Electabuzz")
    print("6    Spoink")
    let opz = Int(readLine()!) ?? 0
    var name = ""
    switch opz{
    case 1:
        name = "Butterfree☆"
    case 2:
        name = "Gyarados☆"
    case 3:
        name = "Zorua☆"
    case 4:
        name = "Crobat☆"
    case 5:
        name = "Electabuzz☆"
    case 6:
        name = "Spoink☆"
    default:
        print("scegli un pokemon esistente")
        let kkk = myPokemon(name: "", hp: 0)
        name = kkk.randomPkm()
        print("ti abbiamo assegnato: \(name)")
    }
    
    let user = myPokemon(name: name, hp: 10)
    var namePc = user.randomPkm()
    while namePc == name{
        namePc = user.randomPkm()
    }
    let pc = myPokemon(name: namePc, hp: 10)
    
    while (pc.isAlive() && user.isAlive()){
            pc.loseHp(atk: user.attk())
            usleep(1000000)
            print("°    °")
            user.loseHp(atk: pc.attk())
            usleep(1000000)
            print("°    °")
    }
    for _ in 1...3{
        usleep(1000000)
        print("...", terminator: "")
    }
    if pc.isAlive() == false{
        print("")
        print("\(name) VINCE")
    }
    if user.isAlive() == false{
        print("")
        print("\(namePc) VINCE")
    }
    print("Vuoi fare un' altra partita?")
    print("1- SI")
    print("2- NO   ")
    let quest = Int(readLine()!) ?? 0
    if quest == 2{
        combat = 2
        print("Grazie mille torna presto")
    }
    
}
}
}
