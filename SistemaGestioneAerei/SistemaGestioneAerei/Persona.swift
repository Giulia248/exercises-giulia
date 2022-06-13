//
//  Persona.swift
//  SistemaGestioneAerei
//
//  Created by user on 10/06/22.
//

import Foundation
/*
persona
-nome, cognome, eta
 */

class Persona{
    
    //costruttore
    internal var nome: String
    internal  var cognome: String
    internal var eta: Int
    
    init(nome: String, cognome: String, eta: Int){
        self.nome = nome
        self.cognome = cognome
        self.eta = eta
    }
    
    //funzioni get
    func getNome() -> String{
        return self.nome
    }
    func getCognome() -> String{
        return self.cognome
    }
    func getEta() -> Int{
        return self.eta
    }
}
