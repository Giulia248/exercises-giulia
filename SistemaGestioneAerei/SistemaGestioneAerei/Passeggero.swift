//
//  Passeggero.swift
//  SistemaGestioneAerei
//
//  Created by user on 10/06/22.
//

import Foundation
/*
passeggero
-codice volo int
*/

class Passeggero : Persona{
  
        //attributi
        var nVolo: String
        init(nome: String, cognome: String, eta: Int, nVolo: String){
            self.nVolo = nVolo
            super.init(nome: nome, cognome: cognome, eta: eta)
        }
        
        //funzioni get
        func getNvolo() -> String{
            return self.nVolo
        }
}


    
