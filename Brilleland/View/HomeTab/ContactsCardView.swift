//
//  ContactsCardView.swift
//  Brilleland
//
//  Created by joey chau on 01/11/2021.
//

import SwiftUI

struct ContactsCardView: View {
    
    let contactsImage: String
    let contactsTitle: String
    let contactsSubTitle: String
    let contactsType: String
    let ContactsSize: String
    let contactsPrice: String
    
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                Image(contactsImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                HStack {
                    Group{
                        Text(contactsType)
                        Divider()
                            .frame(width: 1, height: 15)
                        Text(ContactsSize)
                        
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.black)
                }
                
                Text(contactsTitle)
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundColor(Color("brillelandPrimaryGreenColor"))
                
                Text(contactsSubTitle)
                    .font(.system(size: 14, weight: .light))
                    .foregroundColor(Color.black)
                
                Text("Kr \(contactsPrice),-")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color("brillelandPrimaryGreenColor"))
                    .padding(.top, 2)
                
            }
            
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 14).stroke(Color("TabBarGrayColor"),lineWidth: 2)
                   
            )
            
            
        }
        
        
        
    }
}

struct ContactsCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsCardView(contactsImage: "dailiesTotal1", contactsTitle: "Dailies Total 1", contactsSubTitle: "Acuvue", contactsType: "Sfærisk", ContactsSize: "30 linser i pakken", contactsPrice: "260")
    }
}


