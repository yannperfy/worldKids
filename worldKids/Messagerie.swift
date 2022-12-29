//
//  Messagerie.swift
//  worldKids
//
//  Created by Apprenant79 on 13/12/2022.
//

import SwiftUI

struct projet5: View {
    
    var body: some View{
        
        NavigationView {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("couleurFond"))
                    .edgesIgnoringSafeArea(.top)
                VStack(spacing: 20) {
                    
                    Text ("Messagerie")
                        .font(Font.custom("Lemon-Regular", size: 30))
                        .foregroundColor(Color("couleurText"))
                    VStack {
                        
                        ScrollView(.horizontal) {
                            HStack{
                                HStack(spacing: 7) {
                                    VStack {
                                        Image("Famille2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                        Text("Pascal")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                    VStack {
                                        Image("Famille4")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                        Text("Zohra")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                    VStack{
                                        
                                        Image("Famille5")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                        Text("Edouard")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                    VStack{
                                        Image("Samy")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                        Text("Samy")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                    
                                    VStack{
                                        Image("Famille7")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                           
                                            .clipShape(Circle())
                                        Text("Omar")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                    VStack{
                                        
                                        Image("Famille6")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                        Text("Solange")
                                            .foregroundColor(.black)
                                            .font(Font.custom("Lemon-Regular", size: 16))
                                        Spacer()
                                    }
                                }
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                
                                Image("Famille6")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                
                                VStack(alignment:.leading){
                                    Text("Solange")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Lemon-Regular", size: 16))
                                        .padding(2)
                                    Text("Non mais heureusement que tu m'as dis comment faire!sans toi j'étais perdue.")
                                        .foregroundColor(.gray)
                                    
                                }
                            }
                            HStack {
                                Image("Famille5")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                VStack(alignment:.leading){
                                    Text("Edouard")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Lemon-Regular", size: 16))
                                        .padding(2)
                                    Text("Okay, merci farah je vais le dire aux enfants.")
                                        .foregroundColor(.gray)
                                }
                            }
                            HStack {
                                Image("Famille8")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                
                                VStack(alignment:.leading){
                                    Text("Maria")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Lemon-Regular", size: 16))
                                        .padding(2)
                                    Text("La derniere fois ça c'esr plutôt bien passé.")
                                        .foregroundColor(.gray)
                                }
                            }
                            HStack {
                                Image("Famille4")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                
                                VStack (alignment:.leading){
                                    Text("Zohra")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Lemon-Regular", size: 16))
                                        .padding(2)
                                    Text("Je pense que je vais amener le petit chez le medecin.")
                                        .foregroundColor(.gray)
                                }
                            }
                            HStack {
                                Image("Famille7")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                
                                VStack(alignment:.leading){
                                
                                    Text("Moustapha")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Lemon-Regular", size: 16))
                                        .padding(2)
                                    Text("La derniere fois ça c'esr plutôt bien passé.")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        Spacer()
                            .padding(20)
                    }
                }
                .padding(.horizontal)
            }
            
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
//                        .fontWeight(.bold)
                        .font(Font.custom("Lemon-Regular", size: 20))
//                        .bold()
                        .foregroundColor(.black)
                        .padding(10)
                        .background (Color.yellow)
                        .cornerRadius(50)
                        .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 4, y: 4)
                })
            }
            }

            
        }
    }
}
            struct projet5_Previews: PreviewProvider {
                static var previews: some View {
                    projet5()
                }
            }
            
            

