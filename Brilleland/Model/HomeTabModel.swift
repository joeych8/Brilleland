//
//  HomeTabModel.swift
//  Brilleland
//
//  Created by joey chau on 29/10/2021.
//

import Foundation

//TODO: might need to add dia and rad later

//MARK: Frames
struct Frame: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var image: String
    var description: String?
}


var frames = [
    
    Frame(title: "Oakley  0OX3184",
          subTitle: "Oakley",
          price: "1999",
          image: "oakley",
          description: "Amerikanske Oakley ble etablert i 1975, og er i dag synonymt med sport, innovativ teknologi og prestasjon.\nOakleys briller passer deg med en aktiv livsstil og image"),
    Frame(title: "RAYBAN 0RX4640V",
          subTitle: "Ray-ban",
          price: "1299",
          image: "rayBan1",
          description: "Ray-Ban 0RX4640V er en brille designet med kraftig og elegant innfatning\nRay-Bans populære portefølje er en blanding av\nikoniske evergreens og nye, trendy modeller."),
    Frame(title: "MARC MARC 409",
          subTitle: "Marc jacobs",
          price: "2499",
          image: "marcJacobs",
          description: "MARC 409 J5G er en motebrille som passer de fleste anledninger\nBrillen er laget i slitesterkt rustfritt stål"),
    Frame(title: "RAYBAN 0RX5393",
          subTitle: "Ray-ban",
          price: "1799",
          image: "rayBan2",
          description: "Ray-Ban Leonard 0RX5393 er en tidløs brille som passer de fleste stiler og anledninger\nRay-Bans populære portefølje er en blanding av\nikoniske evergreens og nye, trendy modeller.")
    
]

//MARK: Contact-lenses
struct Contacts: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var type: String
    var unitSize: String
    var price: String
    var image: String
    var description: String?
    
}

var contacts = [
    
    Contacts(title: "Dailies Total 1",
             subTitle: "Acuvue",
             type: "Sfærisk",
             unitSize: "30 linser i pakken",
             price: "260",
             image: "dailiesTotal1",
             description: "Linsens gode evne til å slippe gjennom oksygen bidrar til å holde øynene dine hvite med et friskt utseende hele dagen.\nDailies Total 1 har tett opptil 100% vanninnhold i overflaten slik at alt som berører øyet ditt er en myk pute av fuktighet.\nLett lysblå linsefarge for enkel håndtering.\nEndagsbruk - nye friske linser hver dag."),
    Contacts(title: "Acuvue Oasys",
             subTitle: "Acuvue",
             type: "Torisk",
             unitSize: "30 linser i pakken",
             price: "328",
             image: "acuvueOasys",
             description: "Acuvue Oasys 1-Day med HydraLuxe teknologi er en ny dagslinse laget for linsebrukere med krevende dager.\nUtmerket ytelse når det gjelder komfort, syn, og håndtering gjennom hele dagen.\nBidrar til å redusere symptomer på tørre og trøtte øyne.\nEndagsbruk - nye friske linser hver dag."),
    Contacts(title: "Acuvue Moist",
             subTitle: "Acuvue",
             type: "Torisk",
             unitSize: "30 linser i pakken",
             price: "229",
             image: "acuvueMoist",
             description: "1-day Acuvue Moist er en kontaktlinse med Lacreon-teknologi med et fuktighetsgivende middel som frigjøres hver gang du blunker for høy komfort gjennom hele dagen.\nØynene kjennes friske og opplagte gjennom hele dagen.\n1-day Acuvue Moist har lys blå linsefarge for enkel håndtering i tillegg til 1-2-3 merking slik at du enkelt ser forskjell på inn- og utside av linsen.\nEndagslinser"),
    Contacts(title: "Acuvue TrueEye",
             subTitle: "Acuvue",
             type: "Sfærisk",
             unitSize: "30 linser i pakken",
             price: "245",
             image: "acuvueTrueEye",
             description: "Friske og komfortable øyne hele dagen takket være HYDRACLEAR® 1-teknologi.\n1-day Acuvue Trueye har en svak farge slik at du enkelt kan skille mellom kontaktlinsens inn- og utside.\nEndagsbruk - nye friske linser hver dag"),
    Contacts(title: "Iwear Fresh",
             subTitle: "Iwear" ,
             type: "Sfærisk",
             unitSize: "30 linser i pakken",
             price: "145",
             image: "iwearFresh",
             description: "iWear Fresh Presbyopia opprettholder en eksepsjonell komfort gjennom hele dagen.\niWear Fresh Presbyopia har rund kantdesign som reduserer interaksjon på bindehinnen og øyelokkene. Perfekt for pasienter med nedsatt tårefilmproduksjon.\nEndagsbruk - nye friske linser hver dag.\niWear Fresh Presbyopia har lyseblå håndteringsfarge."),
    Contacts(title: "Iwear Harmony",
             subTitle: "Iwear",
             type: "Sfærisk",
             unitSize: "30 linser i pakken",
             price: "318",
             image: "iwearHarmony",
             description: "iWear Harmony er utviklet for å gi utmerket komfort og lang brukstid.\niWear Harmony er en endagslinse av silikonhydrogel utformet med ny silikonstruktur som sikrer optimal balanse mellom komfort, sunnhet og håndtering.\niWear Harmony har lyseblå håndteringsfarge.\nEndagsbruk - nye friske linser hver dag.")
]
