//
//  profil2.swift
//  worldKids
//
//  Created by Apprenant79 on 13/12/2022.
//

import SwiftUI
import MapKit



struct projet2: View {
    var selectedParent: Location
    @State private var RejoindreCommu = "Rejoindre sa communauté"
    @Binding var hideSheet: Bool
    var body: some View {
        
       
            
                ZStack{
                Rectangle()
                    .foregroundColor(Color("couleurFond"))
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            hideSheet.toggle()
                        }, label: {
                            Image (systemName: "multiply")
//                                .font(.system(size: 30))
                                .font(Font.custom("Lemon-Regular", size: 20))
//                                .bold()
                                .foregroundColor(.black)
                                .padding(10)
                                .background (Color.yellow)
                                .cornerRadius(50)
                                .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 4, y: 4)
                        })
                        .padding([.trailing, .top])
                   
                    }
                    Text("Profile parent")
                        .foregroundColor(Color("couleurText"))
                        .font(.custom("Lemon-Regular", size: 30))
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        Image(selectedParent.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 110)
                            .clipShape(Circle())
                        
                        
                        VStack {
                            Text("Famille \(selectedParent.name)")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                            //                        Text(selectedParent.name)
                            //                            .foregroundColor(.black)
                            //                            .font(.system(size: 30))
                        }
                        
                    }
                    
                    VStack{
                        VStack(spacing: 30){
                            
                            Text(selectedParent.desciption)
                                .multilineTextAlignment(.leading)
                            
                                .padding()
                                .frame(height: 200)
                                .foregroundColor(.black)
                                .background (Color.white)
                                .cornerRadius(20)
                                .padding()
                                .font(.title2)
                                .shadow(color: Color("couleurBleu").opacity(0.7), radius: 5, x: 13, y: 12)
                            
                            Button(action: {
                                
                            },  label: {
                                
                                Text("Contacter \(selectedParent.name)")
                                    .padding()
                                    .foregroundColor(.black)
                                    .background (Color.yellow)
                                    .cornerRadius(20)
                                
                                    .font(.custom("Lemon-Regular", size: 20))
                                
                            })
                            
                            Button(action: {
                                RejoindreCommu = " 🎊 Bienvenue 🎊"
                            },  label: {
                                
                                Text(RejoindreCommu)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background (Color("couleurBleu"))
                                    .cornerRadius(20)
                                    .font(.custom("Lemon-Regular", size: 20))
                                
                            })
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
}
    struct projet2_Previews: PreviewProvider {
        static var previews: some View {
            projet2(selectedParent:        Location(name: "Martinez", coordinate: CLLocationCoordinate2D(latitude: 48.8390, longitude: 2.448451), image: "Famille4", desciption: " Bonjour je m'appelle Flora.  Je suis la maman de Lucas 6 ans et Eva. J'habite à proximité de chez vous, alors rejoingnez notre groupe d'entraide."), hideSheet: .constant(false))
        }
    }
