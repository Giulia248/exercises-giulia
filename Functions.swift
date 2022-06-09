//
//  Functions.swift
//  Es3
//
//  Created by user on 07/06/22.
//

import Foundation



//Funzione che prende una stringa e conta i caratteri

func charCount(phrase: String) -> Int{
    
    return phrase.count
}

//funzione che da in output il num successivo all'input

func nextNumb(num: Int) -> Int{
    
    return num + 1
}


//data una funzione con tre input si ha l'output con il numero più grande

func max(n1: Int, n2: Int, n3: Int ) -> Int{
        
    if n1 >= n2 && n1 >= n3{
        
        return n1
        
    }else if n2 >= n1 && n2 >= n3{
        
        return n2
    }else{
        
        return n3
    }
    
}

//data una funzione con input dei minuti che converte in secondi
//se input = 0 return 0

func convSec(min: Int) -> Int{
    
    if min == 0 {
        
        return 0
        
    }else{
        
        return min * 60
    }
}

//con input due stringhe in output la stringa più lunga

func stringLenght(s1: String, s2: String) -> String{
    
    if s1.count > s2.count{
        
        return (s1)
    }else{
        
        return (s2)
    }
}


//stampa a video le tabelline dal 2 al 10

func tab(){
    for loop in 2...10{
        //sleep 0,5 sec
        usleep(500000)
        for loop2 in 1...10{
            print("\(loop) * \(loop2) = \(loop * loop2)")
        }
    }
  
}


//input base e altezza e stampi un quadrilatero
func quad(){
    print("Base")
    let b = Int(readLine()!) ?? 0
    print("Altezza")
    let a = Int(readLine()!) ?? 0
    for _ in 1...a{
        for _ in 1...b{
            
            print("°", terminator: "")
        }
        print("")
    }
}

//input un vettore di interi e ritorni la somma
func arrSum(arr: [Int]) -> Int{
    var sum: Int = 0
    for index in 0...3{
        sum += arr[index]
    }
    return sum
}
//input un vettore e output true se il vettore ha multili di 5

func arrMulFive(arr: [Int]) -> Bool{
    var bol = false
    for element in arr{
        if element % 5 == 0{
            bol = true
        }else{
            bol = false
        }
    }
    return bol
}

//input arrai char in ordine alfabetico, output lettera mancante
func vettAscii(vett: [Character]) -> [Int]{
    var vettI: [Int] = []
    for el in vett{
        vettI.append(Int(el.asciiValue!))
    }
    return vettI
}
func missChar(vett: [Int]) -> Character{
    var el: Int = 0
    var index = 1
    
    while(index < vett.count - 1){
        if(vett [index + 1] - vett[index] > 1){
            el = vett[index]
        }
        index += 1
    }
    return Character(UnicodeScalar(el + 1)!)
}



