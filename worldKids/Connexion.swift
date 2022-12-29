//
//  Connexion.swift
//  worldKids
//
//  Created by Apprenant79 on 13/12/2022.
//

import SwiftUI

struct Connexion: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @Binding var connexionValidated: Int
//    struct connecter : Identifiable {
//        var icon:
//        var  name:
//    }

    var body : some View {
        NavigationView {
            
            // Pour faire une Identification d connexion
            ZStack{
                Rectangle()
                    .foregroundColor(Color("couleurdefont"))
                    .ignoresSafeArea()
                    
                VStack(spacing: 20) {
                    Text("WORLD KIDS")
                        .padding(12)
                        .foregroundColor(Color("couleurText"))
                        .font(.custom("Lemon-Regular", size: 40))

                    Spacer()
                    Text("Identifiez-vous")
//                        .font(.title2)
                        .font(.custom("Lemon-Regular", size: 25))
                    
                    
                    /*******************Formulaire       ******/
//                    Form {
                        TextField(text: $username, prompt: Text("Email ou Identifiant"))
                        {
                            Text("Username")
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(20)
                        .shadow(color: Color.cyan.opacity(0.3), radius: 5, x: 5, y: 10)
                        
                        TextField(text: $password,
                                  prompt: Text("Mot de passe")) {
                            Text("Username")
                        }
                                  .padding()
                                  .background(.white)
                                  .cornerRadius(20)
                                  .shadow(color: Color.cyan.opacity(0.3), radius: 5, x: 5, y: 10)
                   
                        HStack {
                            Image(systemName: "square")
                            Text("se souvenir de moi")
                                .font(.system(size: 15))
//                                .padding(10)
                            
                            Spacer()
                            Text("Mot de passe oublié?")
                                .font(.system(size: 15))
                        }
//                        .padding(.horizontal)
                        .padding(.bottom, 100)
                    
                        VStack(){
                            Button(action: {
                                connexionValidated = 1
                            }) {
                                Text("Se connecter")
                            }
                            .padding()
                            .border(.yellow)
                            .background (Color.yellow)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .font(Font.custom("Lemon-Regular", size: 25))
//                            Spacer()
//                            NavigationLink(destination: information_utilisateur(), label: {
//
//                            })
//                            .padding()
//                            .border(.yellow)
//                            .background (Color.yellow)
//                            .foregroundColor(.black)
//                            .cornerRadius(20)
//                            .font(Font.custom("Lemon-Regular", size: 25))
                               
                            
//                            Button("Se connecter") {
//
//                            }
                           
                            NavigationLink(destination: information_utilisateur(), label: {
                                Text(" Pas de compte? Créér un compte pour intégrer votre communauté à proximité.")
                                    .padding(20)
                                    .font(.system(size: 15))
//                                    .foregroundColor(.black) //changer couleur 
                            })
            
                        }
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}
struct projet1_Previews: PreviewProvider {
    static var previews: some View {
        Connexion(connexionValidated: .constant(1))
    }
}
