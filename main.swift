//
//  main.swift
//  Es3
//
//  Created by user on 07/06/22.
//

import Foundation


print("Esercizi: ")
//sleep 1 sec
usleep(1000000)
print("1    funzione che da in output il num successivo all'input")
print("2    data una funzione con tre input si ha l'output con il numero più grande")
print("3    data una funzione con input dei minuti che converte in secondi  //se input = 0 return 0")
print("4    con input due stringhe in output la stringa più lunga")
print("5    stampa a video le tabelline dal 2 al 10")
print("6    input base e altezza e stampi un quadrilatero")
print("7    input un vettore di interi e ritorni la somma")
print("8    input un vettore e output true se il vettore ha multili di 5")
print("9    input arrai char in ordine alfabetico, output lettera mancante")
print("")





let opz = Int(readLine()!) ?? 0

switch opz{
    
    
    
case 1:
    
    print("♡☾            ☽♡", terminator: "")

    let n1 = Int(readLine()!) ?? 0
    print(nextNumb(num: n1))
    

    print("♡☾            ☽♡")
     //sleep 0,5 sec
     usleep(50000)
    
case 2:
    
    print("♡☾            ☽♡", terminator: "")
    
    let n1 = Int(readLine()!) ?? 0
    let n2 = Int(readLine()!) ?? 0
    let n3 = Int(readLine()!) ?? 0
    print(max(n1: n1, n2: n2, n3: n3))

    print("♡☾            ☽♡")
     //sleep 0,5 sec
     usleep(50000)


    
case 3:
    
    print("♡☾            ☽♡", terminator: "")
    
    let n1 = Int(readLine()!) ?? 0
    print(convSec(min: n1))

    print("♡☾            ☽♡")
     //sleep 0,5 sec
     usleep(50000)
    
    
case 4:
    
    print("♡☾            ☽♡", terminator: "")
    
    
    print("Digita Parola 1", terminator: "     ")
    let s1 = readLine()
    print("Digita Parola 2", terminator: "     ")
    let s2 = readLine()
    
    print (stringLenght(s1: s1!, s2: s2!))
    

    print("♡☾            ☽♡")
     //sleep 0,5 sec
     usleep(500000)
    
    
case 5:
    
    print("♡☾            ☽♡")
    
    tab()

    print("♡☾            ☽♡")
     
    
case 6:
    
    print("♡☾            ☽♡", terminator: "")
    
    quad()

    print("♡☾            ☽♡")
    
    
case 7:
    
    print("♡☾            ☽♡", terminator: "")
    
    print("Digitare 4 numeri", terminator: "    ")
    var array: [Int] = []
    for loop in 0...4{
        
        print("Digitare numero \(loop)", terminator: "    ")
        let n1 = Int(readLine()!) ?? 0
        array.append(n1)
    }
    print(arrSum(arr: array))

    print("♡☾            ☽♡")
    
case 8:
    
    print("♡☾            ☽♡")
    
    var arr: [Int] = []
    
    arr.append(2)
    arr.append(5)
    arr.append(2)
    arr.append(2)
    
    
    var arr2: [Int] = []
    arr2.append(5)
    arr2.append(10)
    arr2.append(15)
    arr2.append(20)
    
    print(arrMulFive(arr: arr))
    print(arrMulFive(arr: arr2))
    print("♡☾            ☽♡")
     
    
case 9:
    
    print("♡☾            ☽♡")
    
    var ar: [Character] = []
    ar.append("a")
    ar.append("b")
    ar.append("c")
    ar.append("e")
    let bb: [Int] = vettAscii(vett: ar)
    print(missChar(vett: bb))
    

    print("♡☾            ☽♡")
     
    

default:
    print("NO")
}




