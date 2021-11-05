//
//  ContentView.swift
//  Brilleland
//
//  Created by joey chau on 20/10/2021.
//

import SwiftUI

struct BrillelandTabView: View {
    
    var body: some View {
        VStack(alignment: .center) {
            
            HStack{
                Spacer()
                Image("logoSmall")
                    .resizable()
                    .frame(width: 150, height: 30, alignment: .center)
                    .padding(.leading, 60)
                
                Spacer()
                
                Button {
                    //MARK: Future implementation, option menu
                } label: {
                    Image("burgerMenu")
                        .resizable()
                        .frame(width: 30 ,height: 15 ,alignment: .trailing)
                        .padding(.trailing)
                }
            }
            
            TabView {
                HomeTabView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Hjem")
                    }
                
                PrescriptionTabView()
                    .tabItem {
                        Image(systemName: "eye")
                        Text("mitt syn")
                    }
                
                BookingTabView()
                    .tabItem {
                        Image(systemName: "heart.text.square")
                        Text("Bestill time")
                    }
                
            }
            .accentColor(Color("brillelandPrimaryGreenColor"))
            
            
        }
        //  .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BrillelandTabView()
    }
}
