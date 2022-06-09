//
//  Functions.swift
//  Es4
//
//  Created by user on 08/06/22.
//

import Foundation

/*
 Creare una funzione che prenda in input
     un vettore di interi
     e ritorni il massimo elemento presente nel vettore
 */
func intMax (ar: [Int]) -> Int {
    var max = ar[0]
    for el in ar{
        if el >= max{
            max = el
        }
    }
    return max
}

/*
 Creare una funzione che prenda in input
   un vettore e ritorni il minimo elemento presente
   nel vettore
 */
func intMin (ar: [Int]) -> Int {
    var min = ar[0]
    for el in ar{
        if el <= min{
            min = el
        }
    }
    return min
}

/*
 Creare una funzione che prenda in input
   2 vettori e ritorni un nuovo vettore
   che rappresenta la somma elemento per elemento

   Nota : I due vettori  hanno gli stessi elementi

   [1 , 4 , 5 ]  [ 2 , 3  ,1 ]  ==>  [ 3 , 7 , 6]
 */
func arSum (ar: [Int], ar2: [Int]) -> [Int] {
    var ar3: [Int] = []

    for loop in 0...4 {//array hanno 5 elementi
            ar3.append(ar[loop] + ar2[loop])
        }
    return ar3
    }

/*
 Funzione dadi
 */
func dice(num: Int ) -> Int{
    return Int.random(in: 1...num) + Int.random(in: 1...num)
}
    

/*
 dadi + quante volte é uscito x
 */
func counDice() -> [Int]{
    
    var ris: [Int] = Array(repeating: 0, count: 13)
    for _ in 0...10000{
        ris[dice(num: 6)] += 1
    }
    return ris
}

/*
 funzione input Int e output vettore
 generazione di un vettore random di bool
 e cercare due posizioni continue
 se esiste output vettore con le posizioni
 se non esiste output con -1 e -1
 
 */

func vetBol(index: Int) -> [Bool]{
    var arb: [Bool] = []
    for _ in 1...index{
        arb.append(Bool.random())
    }
    return arb
}
func twoFreeSpaces(arb: [Bool]) -> [Int]{
    var ar: [Int] = []
    var check = false
    for index in 0..<arb.capacity - 1{
        if arb[index] == true && arb[index + 1] == true{
            
            ar.append(index + 1)
            ar.append(index + 2)
            ar.append(0)
            
            
            check = true
            
        }
    }
    if check == false{
        ar.append(-1)
        ar.append(-1)
    }
        
    return ar
}


func finalSpaces() {
    //print(twoFreeSpaces(arb: vetBol(index: 6)))
    print(twoFreeSpaces(arb: [false, false, false, true, true, false, true, true]))
}

/*
 input matrice int output somma elementi
 */
func mat(b: Int, a: Int) -> [[Int]]{
    var mat: [[Int]] = Array(repeating: Array(repeating: 0, count: b), count: a)
    for indexa in 0...a - 1{
        for indexb in 0...b - 1{
            mat[indexa][indexb] = Int.random(in: 1...4)
        }
    }
    return mat
}
func sumMat(mat: [[Int]]) -> Int{
    var sum = 0
    for indexa in 0...4{
        for indexb in 0...4{
            
            sum += (mat[indexa][indexb])
        }
    }
    return sum
}

/*
 Data una matrice di Stringhe trovare la stringa che ha maggiori caratteri
 */
func newMat (x: Int, y: Int) -> [[String]]{
    var mat: [[String]] = Array(repeating: Array(repeating: "a", count: x), count: y)
    for yy in 0..<y{
        for xx in 0..<x{
            print("Digita stringa")
            let str = readLine()
            mat[yy][xx] = str!
        }
    }
    return mat
}
func longestString(mat: [[String]]) -> String{
    var longest = "none"
    for _ in mat{
        for yy in 0..<(mat.capacity - 1){
            for xx in 1..<(mat.capacity - 1){
                if mat[yy][xx - 1].count >  mat[yy][xx].count{
                    longest = mat[yy][xx - 1]
                }
            }
        }
    }
    return longest
}
/*
 Data una matrice e un numero n determinare che esistano due numeri nella matrice tali per cui il loro prodotto da come risultato il numero n
 es. (1, 3, 4) (5, 3, 2)  n=12 -----> (3,4)
 */
func genMat () -> [[Int]]{
    var mat: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: 2)
    for y in 0...1{
        for x in 0...2{
            mat[y][x] = Int.random(in: 0...4)
        }
    }
    return mat
}
func molt (mat: [[Int]], num: Int) -> String{
    
}
