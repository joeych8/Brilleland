//
//  PrescriptionSubView2.swift
//  Brilleland
//
//  Created by joey chau on 05/11/2021.
//

import SwiftUI

struct PrescriptionSubView: View {
    var body: some View {
       
        
        VStack(spacing: 10) {
            HStack(spacing: 40){
                VStack{
                    Text("Sf")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text("-2.00")
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                VStack{
                    Text("Cyl")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text("-1.75")
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                
            }
            HStack(spacing: 40){
                VStack{
                    Text("Akse")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text("60")
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                VStack{
                    Text("Add")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text("2.50")
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
            }
        }
    }
}

struct PrescriptionSubView2_Previews: PreviewProvider {
    static var previews: some View {
        PrescriptionSubView()
    }
}
