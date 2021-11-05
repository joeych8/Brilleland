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
    var examinationDate: String
    var userId: String
    var userDateOfBirth: String
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

var testUserGlasses =
PrescriptionGlasses(
    examinationDate: "24.07.1988",
    userId: "4640167228",
    userDateOfBirth:"05.11.2021",
    sfRight: "-1,00",
    sfLeft: "-4,00",
    cylRight: "-1,75",
    cylLeft: "-1,50",
    axisRight: "80",
    axisLeft: "180",
    pdRight: "32",
    pdLeft: "32",
    add: "2,50")


//Contact-lenses
struct PrescriptionContacts: Identifiable {
    
    var id = UUID().uuidString
    var examinationDate: String
    var userContactsId: String
    var userDateOfBirth: String
    var sfRight: String
    var sfLeft: String
    var cylRight: String
    var cylLeft: String
    var axisRight: String
    var axisLeft: String
    var add: String
}


var testUserContacts =
PrescriptionContacts(
    examinationDate: "01.01.2021",
    userContactsId: "4640167228",
    userDateOfBirth:"05.11.2021",
    sfRight: "-1,00",
    sfLeft: "-4,00",
    cylRight: "-1,75",
    cylLeft: "-1,50",
    axisRight: "80",
    axisLeft: "180",
    add: "0,00")


