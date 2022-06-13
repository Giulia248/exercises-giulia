//
//  main.swift
//  SistemaGestioneAerei
//
//  Created by user on 10/06/22.
//

import Foundation

print("DEBUG")
usleep(800000)
print("Creazione aereo")
var aereo1 = Aereo(nVolo: "A12", xpNecessari: 5)
usleep(800000)
print("Prova aggiunta persona false")
print(aereo1.addCaptain(capitano: Capitano(nome: "S", cognome: "SS", eta: 33, exp: 4)))
usleep(800000)
print(aereo1.addPasseggero(passeggero: Passeggero(nome: "e", cognome: "r", eta: 12, nVolo: "A5")))

usleep(800000)
print("Prova aggiunta persona true")
print(aereo1.addCaptain(capitano: Capitano(nome: "S", cognome: "SS", eta: 33, exp: 6)))
usleep(800000)
print(aereo1.addPasseggero(passeggero: Passeggero(nome: "e", cognome: "r", eta: 12, nVolo: "A12")))

usleep(800000)
print("Prova aggiunta capittano con capitano gia presente")
print(aereo1.addCaptain(capitano: Capitano(nome: "S", cognome: "SS", eta: 33, exp: 6)))

usleep(800000)
print("Prova aggiunta persona fino alla fine dell' array")

aereo1.addPasseggero(passeggero: Passeggero(nome: "z", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "e", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "d", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "f", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "u", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "p", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "a", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "w", cognome: "r", eta: 12, nVolo: "A12"))
aereo1.addPasseggero(passeggero: Passeggero(nome: "b", cognome: "r", eta: 12, nVolo: "A12"))


usleep(800000)
print("Prova get info aereo")
print(aereo1.getNvolo())
print(aereo1.getVettPersona())





