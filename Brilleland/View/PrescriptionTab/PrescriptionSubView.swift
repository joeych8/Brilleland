//
//  PrescriptionSubView2.swift
//  Brilleland
//
//  Created by joey chau on 05/11/2021.
//

import SwiftUI

struct PrescriptionSubView: View {
    
    let rightEyeSf: String
    let leftEyeSf: String
    let rightEyeCyl: String
    let leftEyeCyl: String
    let rightEyeAxis: String
    let leftEyeAxis: String
    let addition: String
    
    
    var body: some View {
        
        
        VStack(alignment: .leading,spacing: 10) {
            
            HStack(spacing: 40){
                Text("H")
                    .font(.system(size: 16,weight: .bold))
                    .foregroundColor(Color("brillelandTextColor"))
                
                VStack{
                    
                    Text("Sf")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text(rightEyeSf)
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                VStack{
                    Text("Cyl")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text(rightEyeCyl)
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                
                
                HStack(spacing: 40){
                    VStack{
                        Text("Akse")
                            .font(.system(size: 16,weight: .regular))
                            .foregroundColor(Color("brillelandTextColor"))
                        Text(rightEyeAxis)
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color("brillelandTextColor"))
                    }
                    VStack{
                        Text("Add")
                            .font(.system(size: 16,weight: .regular))
                            .foregroundColor(Color("brillelandTextColor"))
                        Text(addition)
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color("brillelandTextColor"))
                    }
                }
            }
            HStack(spacing: 40){
                Text("V")
                    .font(.system(size: 16,weight: .bold))
                    .foregroundColor(Color("brillelandTextColor"))
                VStack{
                    
                    Text("Sf")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text(leftEyeSf)
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                VStack{
                    Text("Cyl")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(Color("brillelandTextColor"))
                    Text(leftEyeCyl)
                        .font(.system(size: 16,weight: .bold))
                        .foregroundColor(Color("brillelandTextColor"))
                }
                
                
                HStack(spacing: 40){
                    VStack{
                        Text("Akse")
                            .font(.system(size: 16,weight: .regular))
                            .foregroundColor(Color("brillelandTextColor"))
                        Text(leftEyeAxis)
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color("brillelandTextColor"))
                    }
                    VStack{
                        Text("Add")
                            .font(.system(size: 16,weight: .regular))
                            .foregroundColor(Color("brillelandTextColor"))
                        Text(addition)
                            .font(.system(size: 16,weight: .bold))
                            .foregroundColor(Color("brillelandTextColor"))
                    }
                }
            }
            
            
        }
        
    }
}

struct PrescriptionSubView2_Previews: PreviewProvider {
    static var previews: some View {
        PrescriptionSubView(rightEyeSf: "2,00", leftEyeSf: "2,00", rightEyeCyl: "-2,50", leftEyeCyl: "-2,50", rightEyeAxis: "180", leftEyeAxis: "80", addition: "2,00")
    }
}
