//
//  main.swift
//  Objects1
//
//  Created by user on 09/06/22.
//

import Foundation

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

