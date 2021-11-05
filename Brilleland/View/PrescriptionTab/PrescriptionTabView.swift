//
//  PerscriptionView.swift
//  Brilleland
//
//  Created by joey chau on 25/10/2021.
//

import SwiftUI

struct PrescriptionTabView: View {
    private let tabs = ["Brille styrke","Linse styrke"]
    @State private var selected = "Brille styrke" // Briller is set to default tab
    @Namespace var animation
    
    var body: some View {
        
        VStack{
            
            HStack {
                ForEach (tabs, id: \.self){ tab in
                    //Tab Button
                    TabButton(title: tab, selected: $selected, animation: animation)
                }
                
                Spacer()
            }
            .padding()
            
            if selected == "Brille styrke" {
                //BS
                ScrollView{
                    
                    VStack{
                        
                        HStack{
                            Text("Brilleseddel")
                                .font(.system(size: 34, weight: .bold))
                                .foregroundColor(Color("brillelandTextColor"))
                                .padding(.leading, 25)
                            
                            Spacer()
                            
                        }
                        
                        VStack {
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        PrescriptionPatientInfoView(
                            examinationDate: testUserGlasses.examinationDate,
                            userId: testUserGlasses.userId,
                            dateOfBirth: testUserGlasses.userDateOfBirth)
                        
                        VStack{
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        VStack{
                            
                            HStack(alignment: .lastTextBaseline,spacing: 58){
                                
                                Text("Pd")
                                    .font(.system(size: 16,weight: .regular))
                                    .foregroundColor(Color("brillelandTextColor"))
                                VStack{
                                    Text("H")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Text("32,00")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                }
                                VStack{
                                    Text("V")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Text("32,00")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                }
                                VStack{
                                    Text("Bin")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Text("64,00")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                }
                            }
                        }
                        .padding(.top, 10)
                        
                        VStack{
                            
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        HStack(spacing: 20){
                            
                            PrescriptionSubView(
                                rightEyeSf: testUserGlasses.sfRight,
                                leftEyeSf: testUserGlasses.sfLeft,
                                rightEyeCyl: testUserGlasses.cylRight,
                                leftEyeCyl: testUserGlasses.cylLeft,
                                rightEyeAxis: testUserGlasses.axisRight,
                                leftEyeAxis: testUserGlasses.axisLeft,
                                addition: testUserGlasses.add)
                            
                        }
                        .padding(.top, 20)
                        
                        VStack{
                            
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        VStack{
                            Text("Brilleland As avd. 464 Sandvika") // should be from "json"
                                .font(.system(size: 16,weight: .bold))
                                .foregroundColor(Color("brillelandTextColor"))
                            
                        }.padding(.top, 40)
                    }
                }
                
            } else {
                //LS
                
                ScrollView{
                    
                    VStack{
                        
                        HStack{
                            Text("Linseseddel")
                                .font(.system(size: 34, weight: .bold))
                                .foregroundColor(Color("brillelandTextColor"))
                                .padding(.leading, 25)
                            
                            Spacer()
                            
                        }
                        
                        VStack {
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        PrescriptionPatientInfoView(
                            examinationDate: testUserContacts.examinationDate,
                            userId: testUserContacts.userContactsId,
                            dateOfBirth: testUserContacts.userDateOfBirth)
                        
                        
                        VStack{
                            
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        HStack(spacing: 20){
                            PrescriptionSubView(
                                rightEyeSf: testUserContacts.sfRight,
                                leftEyeSf: testUserContacts.sfLeft,
                                rightEyeCyl: testUserContacts.cylRight,
                                leftEyeCyl: testUserContacts.cylLeft,
                                rightEyeAxis: testUserContacts.axisRight,
                                leftEyeAxis: testUserContacts.axisLeft,
                                addition: testUserContacts.add)
                            
                        }
                        .padding(.top, 20)
                        
                        VStack{
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        VStack{
                            
                            HStack{
                                
                                VStack{
                                    Text("Kontaktlinse")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Spacer()
                                    Text("Dailies total 1")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    
                                }
                                Spacer()
                                
                                VStack{
                                    Text("Dia")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Spacer()
                                    Text("14,10")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                }
                                VStack{
                                    Text("Rad")
                                        .font(.system(size: 16,weight: .bold))
                                        .foregroundColor(Color("brillelandTextColor"))
                                    Spacer()
                                    
                                    Text("8,50")
                                        .font(.system(size: 16,weight: .regular))
                                        .foregroundColor(Color("brillelandTextColor"))
                                }
                                Spacer()
                            }
                            .padding(.leading, 25)
                        }
                        .padding(.top, 10)
                        
                        
                        VStack{
                            Spacer()
                                .frame(height: 25)
                            Divider()
                                .frame(width: 338, height: 2)
                                .background(Color.black)
                        }
                        
                        VStack{
                            Text("Brilleland As avd. 464 Sandvika")
                                .font(.system(size: 16,weight: .bold))
                                .foregroundColor(Color("brillelandTextColor"))
                            
                        }.padding(.top, 40)
                    }
                }
            }
        }
    }
}

struct PerscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PrescriptionTabView()
    }
}






