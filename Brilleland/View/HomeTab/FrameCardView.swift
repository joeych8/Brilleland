//
//  CardView.swift
//  Brilleland
//
//  Created by joey chau on 01/11/2021.
//

import SwiftUI

struct FrameCardView: View {
    
    let frameImage: String
    let frameTitle: String
    let frameSubTitle: String
    let framePrice: String
    
    var body: some View {
        
        VStack{
            
            Image(frameImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(15)
            Text(frameTitle)
                .font(.system(size: 16, weight: .heavy))
                .foregroundColor(Color("brillelandPrimaryGreenColor"))
            
            Text(frameSubTitle)
                .font(.system(size: 14, weight: .light))
                .foregroundColor(Color.black)
            
            Text("Kr \(framePrice),-")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color("brillelandPrimaryGreenColor"))
                .padding(.vertical, 2)
            Spacer()
                .frame(height: 30)
            
        }
        
        .padding(.vertical,15) //FIXME: this is done hacky, find a solution for same size cards.
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color("TabBarGrayColor"),lineWidth: 2)
//                .shadow(color: Color.gray, radius: 8, x: -8, y: -8)
//                .shadow(color: Color.black, radius: 8, x: 8, y: 8) //testing out shadow
        )
        
        
        
        
        
        
    }
    
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        FrameCardView(frameImage: "rayBan2", frameTitle: "Rayban", frameSubTitle: "banRay", framePrice: "1999")
    }
}

