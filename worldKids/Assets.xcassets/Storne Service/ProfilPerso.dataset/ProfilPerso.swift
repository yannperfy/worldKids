//
//  ProfilPerso.swift
//  Storne Service
//
//  Created by Yann Perfy on 20/12/2022.
//

import SwiftUI

struct ProfilPerso: View {
    @State private var isShowingPhotoPicker = false
    @State private var avatarImage = UIImage(named: "lama")!
    @State private var name = ""
    @State private var familyName = ""
    @State private var num = ""
    @State private var mail = ""
    @State private var infos = ""
    var body: some View {
        
                    NavigationView{
        ZStack { // début de la Zstack
            Rectangle()
                .foregroundColor(Color("couleurFond"))
            //            .edgesIgnoringSafeArea(.top)
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack{
                    VStack {
                        Text("Profil")
                            .bold()
                            .font(Font.custom("Lemon-Regular", size: 40))
                            .foregroundColor(Color("couleurText"))
                        //                            .padding(.top)
                        VStack {
                            Image(uiImage:avatarImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipShape(Circle())
                                .onTapGesture {
                                    isShowingPhotoPicker = true
                                }
                        }
                        
                        .sheet(isPresented: $isShowingPhotoPicker, content: { ImagePicker(avatarImage: $avatarImage)})
                    }
                    
                    VStack(alignment: .leading) {
                        
                        
                        Text("Informations Personnelles:")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //                            .padding()
                        
                        VStack(alignment: .leading) {
                            TextField("Dramon", text: $name)
                                .padding(.leading)
                                .frame(width: 270, height: 50)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color("couleurBleu").opacity(0.9), radius: 4, x: 3, y: 3)
                                .padding(.vertical)
                            
                            TextField("Adrien", text: $familyName)
                                .padding(.leading)
                                .frame(width: 270, height: 50)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color("couleurBleu").opacity(0.9), radius: 4, x: 3, y: 3)
                                .padding(.vertical)
                            
                            
                            TextField("+33 6 65 78 89 89", text: $num)
                                .padding(.leading)
                                .frame(width: 270, height: 50)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color("couleurBleu").opacity(0.9), radius: 4, x: 3, y: 3)
                                .padding(.vertical)
                        }
                        
                        Text("Adresse Mail")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        TextField("adrien75@gmail.com", text: $mail)
                            .padding(.leading)
                            .frame(width: 270, height: 50)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color("couleurBleu").opacity(0.9), radius: 4, x: 3, y: 3)
                            .padding(.vertical)
                        
                        Text("Informations de vos Enfants")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        HStack(spacing: 20.0) {
                            TextField("Samuel", text: $infos)
                                .padding(.leading)
                                .frame(width: 270, height: 50)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color("couleurBleu").opacity(0.9), radius: 4, x: 3, y: 3)
                                .padding(.trailing)
                            
                            Button("+") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }
                            
                        }
                    }
                    LocalisationWorldKids()
                        .frame(height: 220)
                        .cornerRadius(30)
                        .overlay{
                            RoundedRectangle(cornerRadius: 30).stroke(.orange, lineWidth: 2)
                            
                        }
                        .padding(.horizontal)
                        .padding()
                    Button("Sauvegarder") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(Font.custom("Lemon-Regular", size: 20))
                    .foregroundColor(.black)
                    .frame(width: 200, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(20)
                }
                
//                Spacer()
            }
        }
                    }
    }
}


struct ProfilPerso_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPerso()
    }
}
