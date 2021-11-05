//
//  FrameDetailView.swift
//  Brilleland
//
//  Created by joey chau on 03/11/2021.
//

import SwiftUI

struct FrameDetailView: View {
    
    @Binding var selectedFrame: Frame
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
                Image(selectedFrame.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                VStack {
                    HStack{
                        Text(selectedFrame.title)
                            .font(.system(size: 22, weight: .medium))
                            .padding(.leading,10)
                        Spacer()
                    }
                    HStack{
                        Text(selectedFrame.subTitle)
                            .font(.system(size: 18))
                            .padding(.leading,10)
                        Spacer()
                    }
                }
                
                VStack{
                    //TODO: Figure out checkmarks placement like brilleland.no
                    HStack {
                        Image(systemName: "checkmark")
                            .font(.system(size: 20,weight: .bold))
                            .foregroundColor(Color("brillelandOrangeColor"))
                        Text(selectedFrame.description ?? "N/A")
                    }
                }
                .padding()
                .background(Color("brillelandAccentGreenColor"))
                .cornerRadius(15)
                
                VStack{
                    HStack {
                        Spacer()
                        Text("Kr \(selectedFrame.price),-")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .padding()
                    }
                }
                
                Spacer()
                    .frame(height: 50)
                
                HStack{
                    
                    Button {
                        //future implementation, show in app browser (WebView) brilleland.no / contact info
                        //Could also be a buy/reserve button in the future
                    } label: {
                        Text("Finn butikk")
                            .font(.system(size: 18))
                            .clipShape(Rectangle())
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color("brillelandPrimaryGreenColor"))
                            .cornerRadius(10)
                    }
                    
                }
                
                Spacer()
                    .frame(height: 50)
                
                HStack(spacing: 20){
                    
                    VStack{
                        Image("fornoyd")
                            .background(Color("brillelandPrimaryGreenColor"))
                            .clipShape(Circle())
                        Text("100% fornøyd")
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .font(.system(size: 15,weight: .medium))
                    }
                    
                    VStack{
                        Image("serviceHands")
                            .background(Color("brillelandPrimaryGreenColor"))
                            .clipShape(Circle())
                        Text("Livslang service")
                            .foregroundColor(Color("brillelandPrimaryGreenColor"))
                            .font(.system(size: 15,weight: .medium))
                    }
                    
                    VStack{
                        Image("progressiv")
                            .background(Color("brillelandPrimaryGreenColor"))
                            .clipShape(Circle())
                        Text("Progressivgaranti")
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

//struct FrameDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameDetailView()
//    }
//}
