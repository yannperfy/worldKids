//
//  3 - conversation pour evenement .swift
//  Storne Service

//  3 - conversation pour evenement .swift
//  worldKids
//
//  Created by Apprenant79 on 09/12/2022.
//

import SwiftUI

struct ____conversation_pour_evenement_: View {
    @State private var titreevent : String = ""
    var body: some View {
       
        ZStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(Color("couleurFond"))
                    .ignoresSafeArea()
                VStack {
                    
                    Image("Samy")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 130)
                        .cornerRadius(70)
                    Text ("Samy")
                        .foregroundColor(Color("couleurText"))
                        .font(Font.custom("Lemon-Regular", size: 25))
                    ScrollView {
                        
                        HStack {
                            Text ("""
Salut Farah ! oui les enfants sont bien
arrivés du sport
""")

                            .font(.subheadline)
                            .padding(.all, 11.0)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(35)
                            .shadow(color: Color("couleurBleu"), radius: 4, x: 1, y: 1)
                            Spacer()
                                
                        }
                        
                        HStack {
                            Spacer()
                            
                            Text (
                                "Okay, merci Samy, passe une bonne soirée")
                            .padding(.all, 11.0)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("couleurBleu"))
                            .cornerRadius(35)
                            
                        }
                        .padding()
                       
                        HStack {
                            Text ("Merci toi aussi passe une bonne soirée")
                            .font(.subheadline)
                            .padding(.all, 11.0)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(35)
                            .shadow(color: Color("couleurBleu"), radius: 4, x: 1, y: 1)
                            Spacer()
                        }
                        VStack {
                            Text ("Lun. 11 nov. à 10:45 AM")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                        }
                        
                        HStack {
                            Spacer()
                            Text ("""
Salut Samy, j'ai vu que t'as crée un
évènement crêpe les enfants ont hâte
""")
                            .padding(.all, 11.0)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .background(Color("couleurBleu"))
                            .cornerRadius(35)
                        }
                        .padding()
                        
                        HStack {
                            Text ("""
Ouais, c'est Ibrahim qui en a eu l'idée,
je me suis dit autant la partager
avec les autres
""")
                            .font(.subheadline)
                            .padding(.all, 11.0)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(35)
                            .shadow(color: Color("couleurBleu"), radius: 4, x: 1, y: 1)
                            Spacer()
                        }
                        .padding()
                        HStack {
                            Spacer()
                            Text ("Superbe idée, moi aussi je pense lancer un évènement sur le sport plutôt, les enfants adorent ça sortir dehors")
                                .padding(.all, 11.0)
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .background(Color("couleurBleu"))
                                .cornerRadius(35)
                        }
                        .padding()
                        
                        HStack {
//                                                        Spacer()
                            Text ("C'est vrai que ça serait bien que ce soit en extérieure pour changer un peu du visio ")
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .padding()
                                .background(.white)
                                .cornerRadius(35)
                                .shadow(color: Color("couleurBleu"), radius: 4, x: 1, y: 1)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Text ("Je vais voir avec la petite")
                                .padding(.all, 11.0)
                                .font(.subheadline)
                                .foregroundColor(.black)
                                .background(Color("couleurBleu"))
                                .cornerRadius(35)
                                .padding()
                        }
                        HStack {
                            Spacer()
                            Text ("")
                                .padding(.all, 11.0)
                                
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    Image(systemName: "photo.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 30))
                    Image(systemName: "mic.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 27))
                    Spacer()
                    TextField ("Message ...", text : $titreevent)
                        .padding()
                        .frame(width: 270)
                        .background(.white)
                        .cornerRadius(35)
                        .shadow(color: Color("couleurBleu"), radius: 4, x: 1, y: 1)
                    //                        .padding(5)
                }
                .background(Color("couleurFond"))
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink (destination: visioMessage()) {
                        Image(systemName: "video.fill")
                        
//                            .fontWeight(.bold)
                            .font(Font.custom("Lemon-Regular", size: 20))
                            
//                            .bold()
                            .foregroundColor(.black)
                            .padding(10)
                            .background (Color.yellow)
                            .cornerRadius(50)
                            .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 4, y: 4)
                    }
                }
            }
        }
        
    
        
        
        struct ____conversation_pour_evenement__Previews: PreviewProvider {
            static var previews: some View {
                ____conversation_pour_evenement_()
            }
        }
    }


