//
//  LoginView.swift
//  Brilleland
//
//  Created by joey chau on 25/10/2021.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn: Bool
    
    @State var userName: String = ""
    @State var passWord: String = ""
    
    var body: some View {
        //
        //        NavigationView {
        //
        VStack(alignment: .leading) {
            HStack{
                Spacer()
                Image("logoSmall")
                    .resizable()
                    .frame(width: 128, height: 24)
                Spacer()
            }
            
            VStack(alignment: .center) {
                
                Spacer()
                    .frame(height: 120)
                Text("Logg inn")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(Color("brillelandTextColor"))
                    .padding(.bottom, 82)
                    .padding(.trailing, 220)
                
                Group {
                    TextField("E-postadresse", text: $userName)
                        .keyboardType(.emailAddress)
                    
                    Divider()
                    
                        .padding(.bottom, 54)
                    SecureField("Passord", text: $passWord)
                    
                    Divider()
                    
                }
                .font(.system(size: 22, weight: .regular))
                .foregroundColor(Color("brillelandTextColor"))
                .padding(.horizontal,22)
                
                Button {
                    //login
                } label: {
                    Text("Logg inn")
                        .font(.system(size: 22))
                        .clipShape(Rectangle())
                        .padding(.vertical,8)
                        .padding(.horizontal,120)
                        .foregroundColor(Color.white)
                        .background(Color("brillelandPrimaryGreenColor"))
                        .cornerRadius(5)
                }
                .padding(.top, 60)
                
                Button {
                    //Future implementation
                } label: {
                    Text("Glemt Passord?")
                        .foregroundColor(Color("brillelandPrimaryGreenColor"))
                        .font(.system(size: 15, weight: .regular))
                        .padding()
                }
                
                HStack{
                    Group{
                        Text("Ny bruker?")
                            .foregroundColor(Color("brillelandTextColor"))
                        Button {
                            //Future implementation
                        } label: {
                            Text("Registrer deg nå")
                                .foregroundColor(Color("brillelandOrangeColor"))
                        }
                    }
                    .font(.system(size: 15, weight: .regular))
                }
                .padding(.top, 60)
                
                //MARK: Continue w/o logging old "NavigationLink" (replaced due to NavBar vs TabBar issue)
                HStack{
                    Group{
                        Text("Fortsett uten å logge inn")
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color("brillelandTextColor"))
                    .padding(.top, 30)
                }
                .onTapGesture {
                    withAnimation(Animation.easeInOut(duration: 0.5)) {
                        isLoggedIn = true
                    }
                }
                
                Spacer()
                
            }
        }
        //            .navigationBarHidden(true)
        //
        //        }
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
