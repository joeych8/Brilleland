//
//  ContactsDetailView.swift
//  Brilleland
//
//  Created by joey chau on 04/11/2021.
//

import SwiftUI

struct ContactsDetailView: View {
    
    @Binding var selectedContacts: Contacts
    @Binding var show: Bool
    @State var loadContent = false
    var animation: Namespace.ID
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Button {
                    //close View
                    withAnimation(.spring()){show.toggle()}
                } label: {
                    Image("brillelandLeftArrow")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                
            }
            ScrollView { //scrollview here in case of smaller devices
                Image(selectedContacts.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                VStack {
                    HStack{
                        Text(selectedContacts.title)
                            .font(.system(size: 22, weight: .medium))
                            .padding(.leading,10)
                            Spacer()
                    }
                    HStack{
                        Text(selectedContacts.subTitle)
                            .font(.system(size: 18))
                            .padding(.leading,10)
                        Spacer()
                    }
                    
                    HStack{
                        Text(selectedContacts.type)
                            .padding(.leading, 10)
                        Divider()
                            .frame(width: 1, height: 15)
                        Text(selectedContacts.unitSize)
                        
                        Spacer()
                    }
                }
                
                VStack{
                    //TODO: Figure out checkmarks placement like brilleland.no
                    HStack {
                        Image(systemName: "checkmark")
                            .font(.system(size: 20,weight: .bold))
                            .foregroundColor(Color("brillelandOrangeColor"))
                        Text(selectedContacts.description ?? "N/A")
                    }
                }
                .padding()
                .background(Color("brillelandAccentGreenColor"))
                .cornerRadius(15)
                
                VStack{
                    HStack {
                        Spacer()
                        Text("Kr \(selectedContacts.price),-")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .padding()
                    }
                }
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    
                    Button {
                        //future implementation, show in app browser brilleland.no, send user to website for purchase OR
                        //In app Purchase 
                    } label: {
                        Text("Kjøp")
                            .font(.system(size: 18))
                            .clipShape(Rectangle())
                            .padding(.horizontal, 40)
                            .padding(.vertical,10)
                            .foregroundColor(Color.white)
                            .background(Color("brillelandPrimaryGreenColor"))
                            .cornerRadius(10)
                    }
                    
                }
                
                Spacer()
                    .frame(height: 50)
                
                HStack(spacing: 20){
                    
                    VStack{
                        Image(systemName: "shippingbox")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(5)
                            .background(Color("brillelandPrimaryGreenColor"))
                            .foregroundColor(Color.white)
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                        Text("Fri frakt med posten på ordre over 500kr!")
                            .lineLimit(3)
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .font(.system(size: 15,weight: .medium))
                    }
                    
                    VStack{
                        Image(systemName: "arrowshape.turn.up.left")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(5)
                            .background(Color("brillelandPrimaryGreenColor"))
                            .foregroundColor(Color.white)
                            .clipShape(Circle())
                            .frame(width: 50, height: 50)
                        Text("Gratis retur selvfølgelig")
                            .lineLimit(2)
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .font(.system(size: 15,weight: .medium))
                    }
                    
                    VStack{
                        Image("fornoyd")
                            .background(Color("brillelandPrimaryGreenColor"))
                            .clipShape(Circle())
                        Text("Alltid 90-dagers åpent kjøp")
                            .lineLimit(2)
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .font(.system(size: 15,weight: .medium))
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal,5)
        }
        
    }
}

//struct ContactsDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactsDetailView()
//    }
//}
