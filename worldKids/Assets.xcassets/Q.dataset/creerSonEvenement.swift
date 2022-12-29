//
//  creerSonEvenement.swift
//  worldKids
//
//  Created by Apprenant79 on 12/12/2022.
//

import SwiftUI

struct creerSonEvenement: View {
        @State private var photo : String = ""
        @State private var titreevent : String = ""
        @State private var descriptionevent : String = ""
    @State private var JeParticipe: String = "Valider mon évènement"
var body: some View {
       
            ZStack { // début de la Zstack
            Rectangle()
                .foregroundColor(Color("couleurFond"))
                .ignoresSafeArea()
            
                VStack { // début de Vstack
                    
                    Text("Créer son evènement")
                        .font(Font.custom("Lemon-Regular", size: 30))
                        .bold()
                        .foregroundColor(Color("couleurText"))
                    
                    TextField ("Ajouter une image ...", text : $photo)
                        .padding()
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(20)
                        .shadow(color: Color("couleurBleu").opacity(0.8), radius: 7, x: 8, y: 10)
                        .padding()
                    TextField ("Titre ...", text : $titreevent)
                        .padding()
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(20)
                        .shadow(color: Color("couleurBleu").opacity(0.8), radius: 7, x: 8, y: 10)
                        .padding()
                    TextField ("   Décrivez précisément votre évènement ...",text : $descriptionevent)
                        .padding(.bottom, 80.0)
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(15)
                        .shadow(color: Color("couleurBleu").opacity(0.8), radius: 7, x: 8, y: 10)
                        .padding()
                    
                    Text (" Nos suggestions pour vous aider : ")
                        .padding(.trailing, 90.0)
                    HStack { // début de Hstack1
                        Text ("évènement extérieur")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text ("5 ans")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text ("motricité")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                    }//fin de Hstack 1
                    
                    HStack { // début de Hstack2
                        Text (" limite participant")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text (" 7 ans et +")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text (" activité ludique")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                    }// fin de Hstack2
                   
                    HStack { // début de Hstack3
                        Text (" visioconférence")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text ("collage")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text ("peinture")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                        Text ("éveil")
                            .padding(.all, 5.0)
                            .foregroundColor(.black)
                            .background(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(Color ("couleurBleu"), lineWidth: 2))
                    } // fin de Hstack 3
                    
                    Button {
                    } label: {
                        Text(" Valider mon évènement")
                            .font(Font.custom("Lemon-Regular", size: 15))
                            .foregroundColor(.black)
                            .padding()
                            .background (Color.yellow)
                            .cornerRadius(15)
                            .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 1, y: 1)
                    }
                    .padding(.top, 60.0)
                }// fin de Vstack
        }// fin de la Zstack
    }
}
struct creerSonEvenement_Previews: PreviewProvider {
    static var previews: some View {
        creerSonEvenement()
    }
}
