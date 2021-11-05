//
//  TabButton.swift
//  Brilleland
//
//  Created by joey chau on 01/11/2021.
//

import SwiftUI

struct TabButton: View {
    
    
    var title: String
    @Binding var selected: String
    var animation: Namespace.ID
 
    
    var body: some View {
        
        Button(action: {withAnimation(.spring()){selected = title}}) {
            Text(title)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(selected == title ? Color("brillelandAccentGreenColor") : .gray)
                .padding(.vertical, 1)
                .padding(.horizontal,selected == title ? 10 : 0)
                .background(
                    
                    ZStack{
                        
                        if selected == title {
                            Color("brillelandPrimaryGreenColor")
                                
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                        
                    }
                    
                    
                )
        }
        
    }
}
















//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
