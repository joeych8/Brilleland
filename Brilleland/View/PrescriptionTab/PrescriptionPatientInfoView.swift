//
//  PrescriptionPatientInfoView.swift
//  Brilleland
//
//  Created by joey chau on 05/11/2021.
//

import SwiftUI

struct PrescriptionPatientInfoView: View {
    
    let examinationDate: String
    let userId: String
    let dateOfBirth: String
    
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 21){
                Group{
                    Text("Undersøkelsesdato:")
                    Text("Kunde:")
                    Text("Født:")
                }
                .font(.system(size: 16,weight: .regular))
                .foregroundColor(Color("brillelandTextColor"))
            }
            .padding(.leading,25)
            Spacer()
            VStack(alignment: .leading, spacing: 21){
                Group{
                    Text(examinationDate)
                    Text(userId)
                    Text(dateOfBirth)
                }
                .font(.system(size: 16,weight: .bold))
                .foregroundColor(Color("brillelandTextColor"))
            }
            Spacer()
            
        }
    }
}

struct PrescriptionPatientInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PrescriptionPatientInfoView(examinationDate: "123", userId: "123", dateOfBirth: "123")
    }
}
