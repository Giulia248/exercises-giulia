//
//  Aereo.swift
//  SistemaGestioneAerei
//
//  Created by user on 13/06/22.
//

import Foundation

/*
 aereo
 -codice volo strig
 -vettore di persona
 -capienza max int
 -num necessario di xp er giudarlo int
 -metodo aggiung capitano: aggiunge un capitano se non esiste un capitano && se xp é valido
    ouput bool
 -add persona: aggiuge persona o personale  passeggero
 */

class Aereo{
    //attributi
    private var nVolo: String
    private var vettPersona: [Persona] //capienza max 11
    private var xpNecessari : Int
    init(nVolo: String, xpNecessari: Int){
        self.nVolo = nVolo
        self.xpNecessari = xpNecessari
        self.vettPersona = []
    }
    //metodi get
    func getNvolo() -> String{
        return self.nVolo
    }
    func getVettPersona(){
        for index in 0...9{
            print("- ", terminator: "")
            print(vettPersona[index].getNome(), vettPersona[index].getEta(), vettPersona[index].getCognome())
        }
    }
    
    //metodi set
    func addCaptain(capitano: Capitano) -> Bool{
        if vettPersona.contains(where:  { $0 is Capitano } ) || capitano.getExp() < xpNecessari{
            return false
        }
        vettPersona.append(capitano)
        return true
    }
    
    func addPasseggero(passeggero: Passeggero) -> Bool{
        if vettPersona.count < 10 && passeggero.getNvolo() == getNvolo(){
            vettPersona.append(passeggero)
            return true
        }
        else {
            return false
        }
    }
    
    
}
