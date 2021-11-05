//
//  PerscriptionTabModel.swift
//  Brilleland
//
//  Created by joey chau on 05/11/2021.
//

import Foundation
//Glasses
struct PrescriptionGlasses: Identifiable {
    
    var id = UUID().uuidString
    var sfRight: String
    var sfLeft: String
    var cylRight: String
    var cylLeft: String
    var axisRight: String
    var axisLeft: String
    var pdRight: String
    var pdLeft: String
    var add: String
}

var testUserGlasses = [
    PrescriptionGlasses(sfRight: "-1,00",
                        sfLeft: "-4,00",
                        cylRight: "-1,75",
                        cylLeft: "-1,50",
                        axisRight: "80",
                        axisLeft: "180",
                        pdRight: "32",
                        pdLeft: "32",
                        add: "2,50")
]

//Contact-lenses
struct PrescriptionContacts: Identifiable {
    
    var id = UUID().uuidString
    var sfRight: String
    var sfLeft: String
    var cylRight: String
    var cylLeft: String
    var axisRight: String
    var axisLeft: String
    var add: String
}


var testUserContacts = [
    PrescriptionContacts(
        sfRight: "-1,00",
        sfLeft: "-4,00",
        cylRight: "-1,75",
        cylLeft: "-1,50",
        axisRight: "80",
        axisLeft: "180",
        add: "0,00")
    
]
