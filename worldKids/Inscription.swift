//
//  Inscription.swift
//  worldKids
//
//  Created by Apprenant79 on 13/12/2022.
//

import SwiftUI

struct information_utilisateur: View {
    @State private var information: String = ""
    @State private var prenom: String = ""
    @State private var emai: String = ""
    @State private var telephone: String = ""
    @State private var adresse: String = ""
    @State private var postal: String = ""
    @State private var pays: String = ""
    @State private var choisissezmotdepasse: String = ""
    @State private var confirmermotdepasse: String = ""
    @State private var justificatif: String = ""
    
    var body: some View {
        // Pour créer un Compte
        ScrollView {
            VStack {
                Text("Intégrer la communauté Wold Kids")
                    .foregroundColor(.orange)
                  //  .font(.system(size: 21))
                    .font(.custom("Lemon-Regular", size: 30))
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading])
                    //.font(.custom("Chewy-Regular", size: ))
                
                ZStack {
                    Rectangle()
                        . frame(width: 350, height: 650)
                        .foregroundColor(Color("couleurBleu"))
                        .cornerRadius(30)
                      
                    
                    VStack(spacing: 10) {
                    
                        TextField("Nom", text: $information)
                                        .padding()
                                        .foregroundColor(.black)
                                        .background(.white)
                                        .cornerRadius(40)
    //                                    .padding()
                                        
                          
                        
                        TextField("Prénom", text: $prenom)
                            .padding()
                            .background(.white)
                            .cornerRadius(40)
                            .foregroundColor(.black)
    //                        .padding()
                           
                        TextField("Email", text: $emai)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        TextField("+33", text: $telephone)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        TextField("Adresse", text: $adresse)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        TextField(" Code Postal", text: $postal)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        TextField("Pays", text: $pays)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                            
                        TextField("Choisissez mot de passe", text: $choisissezmotdepasse)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        TextField("Confirmez mot de passe ", text: $confirmermotdepasse)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                        
                        
                        TextField("Ajouter justificatif vidéo", text:$justificatif)
                            .padding()
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
                            
                    }
                    .padding(.horizontal, 28.0)
                    .padding(.all, 5.0)
                    
                }
                    
                    VStack {
                        
                        Button(action: {
                            
                        },  label: {
                            
                                Text("Créer mon compte")
                                .padding()
                                    .foregroundColor(.black)
                                    .background (Color.yellow)
                                    .cornerRadius(20)
    //                                .padding(30)
                                    .font(.custom(
                                        "Lemon-Regular",
                                        fixedSize: 18))
                            
                        }
                               
                        ) }
                }
            .foregroundColor(Color("couleurdefont"))
        }
        }
    }
    
    struct information_utilisateur_Previews:PreviewProvider {
        static var previews: some View {
            information_utilisateur()
        }
    }
    
    
    
    
    
