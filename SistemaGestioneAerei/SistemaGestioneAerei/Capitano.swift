//
//  Capitano.swift
//  SistemaGestioneAerei
//
//  Created by user on 10/06/22.
//

import Foundation

/*
 capitano estendepersona
 -numero ore di volo int
 */

class Capitano : Persona{
    //attributi
    var exp: Int
    init(nome: String, cognome: String, eta: Int, exp: Int){
        self.exp = exp
        super.init(nome: nome, cognome: cognome, eta: eta)
    }
    
    //funzioni get
    func getExp() -> Int{
        return self.exp
    }
    //funzioni set
    func setExp(exp: Int){
        self.exp = exp
    }
    
}
