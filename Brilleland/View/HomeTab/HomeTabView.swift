//
//  HomeView.swift
//  Brilleland
//
//  Created by joey chau on 25/10/2021.
//

import SwiftUI

struct HomeTabView: View {
    
    private var numberOfAdImages = 5 //FIXME: find a way to use string instead of int as Image name and still have auto scroll to work.
    // private var numberOfAdImages = ["brillelandBai", "brillelandBaiTwo", "brillelandSun", "brillelandEmpty"]
    
    private let timer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    private let tabs = ["Briller","Linser"]
    @State private var selected = "Briller" // Briller is set to default tab
    @State private var currentIndex = 0
    @State var showFrameDetail = false
    @State var showContactsDetail = false
    @State var selectedFrame: Frame = frames[0]
    @State var selectedContacts: Contacts = contacts[0]
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                GeometryReader() { proxy in
                    TabView(selection: $currentIndex) {
                        
                        ForEach(0..<numberOfAdImages) {
                            num in Image("\(num)")
                                .resizable()
                                .scaledToFit()
                                .tag(num)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .frame(width:  400, height: 200)
                    .onReceive(timer, perform:  { _ in
                        withAnimation {
                            currentIndex = currentIndex <
                                numberOfAdImages ? currentIndex + 1 : 0
                        }
                    })
                }
                .frame(width: 400, height: 200)
                
                Spacer()
                
                HStack {
                    ForEach (tabs, id: \.self){ tab in
                        //Tab Button
                        TabButton(title: tab, selected: $selected, animation: animation)
                    }
                    
                    Spacer()
                }
                .padding()
                
                
                if selected == "Briller" {
                    //Briller
                    ScrollView{
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: -20),count: 2),spacing: 15) {
                            
                            ForEach(frames){
                                frame in
                                FrameCardView(frameImage: frame.image, frameTitle: frame.title, frameSubTitle: frame.subTitle, framePrice: frame.price)
                                   // .shadow(radius: 10, y: 16) //TODO: Maybe implement when i get better images
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            selectedFrame = frame
                                            showFrameDetail.toggle()
                                        }
                                    }
                            }
                            .padding(.horizontal)
                        }
                    }
                } else {
                    //Linser
                    ScrollView{
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: -15),count: 2),spacing: 20) {
                            
                            ForEach(contacts){
                                contact in
                                ContactsCardView(contactsImage: contact.image, contactsTitle: contact.title, contactsSubTitle: contact.subTitle, contactsType: contact.type, ContactsSize: contact.unitSize, contactsPrice: contact.price)
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            selectedContacts = contact
                                            showContactsDetail.toggle()
                                        }
                                    }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                }
                
            }
            .opacity(showFrameDetail ? 0 : 1) //Hides VStack content / Replace with FrameDetailView
            .opacity(showContactsDetail ? 0 : 1) //Hides VStack content / Replace with ContactsDetailView
            
            if showFrameDetail {
                FrameDetailView(selectedFrame: $selectedFrame, show: $showFrameDetail, animation: animation)
            } else if showContactsDetail{
                ContactsDetailView(selectedContacts: $selectedContacts, show: $showContactsDetail, animation: animation)
                
            }
            
        }
    }
    
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}





