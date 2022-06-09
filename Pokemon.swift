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
}

