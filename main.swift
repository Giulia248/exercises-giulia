//
//  main.swift
//  Esercizi
//
//  Created by user on 06/06/22.
//

import Foundation


print("Elenco esercizi")
print("1 - Prendere una sequenza di numeri che termina quando viene digitato -1 e farci la media")
print("2 - Verificare se un numero è poitivo e stampare a video i suoi divisori")
print("3 - Verificare se un numero é primo")
print("4 - In una serie di 10 numeri dire positivi, negativi e nulli")




let opz = Int(readLine()!)

switch opz {
    
case 1:
    //Prendere una sequenza di numeri che termina quando viene digitato -1 e farci la media
    print("°°°°°°°°°°°°°°°°°°°")
    
    
    var co = 0
    print("Digitare numero")
    var n1 = Int(readLine()!) ?? 0
    var me = n1
    while (n1 != -1){
        

        print("Digitare numero")
        n1 = Int(readLine()!) ?? 0
        me += n1
        co += 1
        
        
    }
    me = me / co
    print("\(me)")
    
    
    
    
    
    print("°°°°°°°°°°°°°°°°°°°")
    
    
case 2:
    //Verificare se un numero è positivo e stampare a video i suoi divisori
    print("°°°°°°°°°°°°°°°°°°°")
    
    print("Digitare numero")
    var n1 = Int(readLine()!) ?? 0
    var err = 0
    
    while n1 < 0 && err != 3{
        
        print("Digitare numero PARI")
        n1 = Int(readLine()!) ?? 0
        err += 1
        
    }
    
    if err == 3{
        
        print("LEGGI BENE LE ISTRUZIONI")
        
    }else{
        
        print("Divisori ")
        for loop in 1...(n1 / 2){
            
            if n1 % loop == 0 {
                
                print(" °  \(loop)", terminator: "")
                
            }
        }
        print(" \(n1)", terminator: "")

        
    }

    print("")
    print("°°°°°°°°°°°°°°°°°°°")
    
case 3:
    //Verificare se un numero é primo
    
    print("°°°°°°°°°°°°°°°°°°°")
    
    print("Digitare numero")
    let n1 = Int(readLine()!) ?? 0
    var div = true
    
    
    for _ in 0...n1{
        
        
        for loop in 2...(n1 / 2){
            
            if n1 % loop == 0 {
                
                div = false
            }
        }
    }
    if div == true{
        
        print("\(n1) è primo")
    }else{
        
        print("\(n1) non è primo")
    }
    
    print("°°°°°°°°°°°°°°°°°°°")

case 4:
    //
    print("°°°°°°°°°°°°°°°°°°°")
    
    var p = 0
    var n = 0
    var nul = 0
    for loop in 1...10{
        
        print("Digitare numero \(loop)")
        let n1 = Int(readLine()!) ?? 0
        if n1 < 0{
            n += 1
            
        }else if n1 == 0{
            
            nul += 1
        }
        else{
            
            p += 1
        }
    }
    
    print("Positivi: \(p)   Negativi: \(n)  Nulli: \(nul)")
    
    print("°°°°°°°°°°°°°°°°°°°")
    
case 5:
    //
    print("°°°°°°°°°°°°°°°°°°°")
    
    print("°°°°°°°°°°°°°°°°°°°")
    
case 6:
    //
    print("°°°°°°°°°°°°°°°°°°°")
    
    print("°°°°°°°°°°°°°°°°°°°")
    
    
    

    // DEFAULT
default:
    print("Digita un numero valido")

}





