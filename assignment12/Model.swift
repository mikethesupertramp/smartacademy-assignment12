//
//  personModel.swift
//  assignment12
//
//  Created by macbook  on 05.06.23.
//

import Foundation

enum Sort {
    case byDefault
    case byAge
    case byOrigin
}

enum Nationality {
    case georgian
    case italian
    case french
    case australian
    
    //Why is this not a standard functionality??
    static let allValues = [georgian, australian, italian, french]
}

struct PersonModel {
    let name: String
    let surname: String
    let age: Int
    let nationality: Nationality
}

//Moved it out here not to bloat the view controller
//Thanks to chat GPT
let peopleDataSet = [
    PersonModel(name: "Giorgi", surname: "Kvirkvelia", age: 12, nationality: .georgian),
    PersonModel(name: "Marco", surname: "Ricci", age: 28, nationality: .italian),
    PersonModel(name: "Julien", surname: "Dupont", age: 55, nationality: .french),
    PersonModel(name: "Liam", surname: "O'Connor", age: 8, nationality: .australian),
    PersonModel(name: "Nino", surname: "Gogoladze", age: 34, nationality: .georgian),
    PersonModel(name: "Francesca", surname: "Rossi", age: 40, nationality: .italian),
    PersonModel(name: "Camille", surname: "Leroy", age: 22, nationality: .french),
    PersonModel(name: "Connor", surname: "Kelly", age: 4, nationality: .australian),
    PersonModel(name: "Ana", surname: "Kalandadze", age: 29, nationality: .georgian),
    PersonModel(name: "Luca", surname: "De Luca", age: 47, nationality: .italian),
    PersonModel(name: "Emma", surname: "Dubois", age: 13, nationality: .french),
    PersonModel(name: "Jack", surname: "Anderson", age: 16, nationality: .australian),
    PersonModel(name: "Sophia", surname: "Kharadze", age: 38, nationality: .georgian),
    PersonModel(name: "Leonardo", surname: "Marino", age: 17, nationality: .italian),
    PersonModel(name: "Chloe", surname: "Lefevre", age: 41, nationality: .french),
    PersonModel(name: "Oliver", surname: "Thompson", age: 72, nationality: .australian),
    PersonModel(name: "Maka", surname: "Dadiani", age: 14, nationality: .georgian),
    PersonModel(name: "Giovanni", surname: "Conti", age: 48, nationality: .italian),
    PersonModel(name: "Manon", surname: "Leroux", age: 31, nationality: .french),
    PersonModel(name: "Liam", surname: "Smith", age: 39, nationality: .australian),
    PersonModel(name: "Nana", surname: "Machaidze", age: 6, nationality: .georgian),
    PersonModel(name: "Antonio", surname: "Galli", age: 8, nationality: .italian),
    PersonModel(name: "Hugo", surname: "Dufour", age: 61, nationality: .french),
    PersonModel(name: "Ethan", surname: "Wilson", age: 36, nationality: .australian),
    PersonModel(name: "Sofia", surname: "Ricci", age: 42, nationality: .italian),
    PersonModel(name: "Raphael", surname: "Martin", age: 18, nationality: .french),
    PersonModel(name: "Liam", surname: "Thompson", age: 68, nationality: .australian),
    PersonModel(name: "Anastasia", surname: "Iashvili", age: 17, nationality: .georgian),
    PersonModel(name: "Matteo", surname: "Rossi", age: 44, nationality: .italian),
    PersonModel(name: "Emma", surname: "Lambert", age: 10, nationality: .french),
    PersonModel(name: "Isaac", surname: "White", age: 53, nationality: .australian),
    PersonModel(name: "Natia", surname: "Dvali", age: 35, nationality: .georgian),
    PersonModel(name: "Gabriel", surname: "Marchetti", age: 11, nationality: .italian),
    PersonModel(name: "Mathilde", surname: "Durand", age: 12, nationality: .french),
    PersonModel(name: "Noah", surname: "Taylor", age: 60, nationality: .australian),
    PersonModel(name: "Luka", surname: "Gigauri", age: 43, nationality: .georgian),
    PersonModel(name: "Giulia", surname: "Romano", age: 24, nationality: .italian),
    PersonModel(name: "Lucie", surname: "Moreau", age: 57, nationality: .french),
    PersonModel(name: "Joshua", surname: "Harris", age: 4, nationality: .australian),
    PersonModel(name: "Mariam", surname: "Kapanadze", age: 21, nationality: .georgian),
    PersonModel(name: "Alessandro", surname: "Barbieri", age: 54, nationality: .italian),
    PersonModel(name: "Juliette", surname: "Lecomte", age: 15, nationality: .french),
    PersonModel(name: "Ryan", surname: "Jackson", age: 49, nationality: .australian),
    PersonModel(name: "Sophie", surname: "Chikovani", age: 37, nationality: .georgian),
    PersonModel(name: "Gabriel", surname: "Moretti", age: 8, nationality: .italian),
    PersonModel(name: "Amelie", surname: "Lefebvre", age: 33, nationality: .french),
    PersonModel(name: "Elijah", surname: "Wilson", age: 64, nationality: .australian)
]
