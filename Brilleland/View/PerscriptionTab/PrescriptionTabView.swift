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
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 21){
                                Group{
                                    Text("Undersøkelsesdato:")
                                    Text("Kunde:")
                                    Text("Fød:")
                                }
                                .font(.system(size: 16,weight: .regular))
                                .foregroundColor(Color("brillelandTextColor"))
                            }
                            .padding(.leading,25)
                            Spacer()
                            VStack(alignment: .leading, spacing: 21){
                                Group{
                                    Text("21.23.2021") //Model
                                    Text("4640167228") //Model
                                    Text("01.01.2001") //Model
                                }
                                .font(.system(size: 16,weight: .bold))
                                .foregroundColor(Color("brillelandTextColor"))
                            }
                            Spacer()
                            
                        }
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
                        
                        HStack{
                            Spacer()
                            VStack(spacing: 10){
                                Text("Høye")
                                    .padding(.bottom, 10)
                                    .font(.system(size: 16,weight: .bold))
                                    .foregroundColor(Color("brillelandTextColor"))
                                
                                PrescriptionSubView()
                                Spacer()
                                
                            }
                            
                            Spacer()
                            
                            HStack{   //MARK: MID DIV
                                Divider()
                                    .frame(width: 2, height: 155)
                                    .background(Color("brillelandDividerColor"))
                                
                            }
                            Spacer()
                            VStack(spacing: 10){
                                Text("Venstre")
                                    .padding(.bottom, 10)
                                    .font(.system(size: 16,weight: .bold))
                                    .foregroundColor(Color("brillelandTextColor"))
                                
                                PrescriptionSubView()
                               
                                Spacer()
                                
                            }
                            Spacer()
                        }
                        .padding(.top, 20)
                        
                        
                        VStack{
                            Text("Brilleland As avd. 464 Sandvika")
                            
                        }.padding(.top, 40)
                        
                        
                    } //TopVStack
                }//ScrollView
                
            } else {
                
                
                // LS
                
            }
            
            
            
        }
        
        
        
        
    }
}

struct PerscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        PrescriptionTabView()
    }
}




