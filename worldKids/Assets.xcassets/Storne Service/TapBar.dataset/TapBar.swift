//
//  TapBar.swift
//  Storne Service
//
//  Created by Yann Perfy on 18/12/2022.
//

import SwiftUI

struct TapBar: View {
    
    @State private var selectedScreen = 0
    
    
    
    //    init() {
    //        //Use this if NavigationBarTitle is with Large Font
    //        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("couleurText"))]
    //
    //        //Use this if NavigationBarTitle is with displayMode = .inline
    //        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color("couleurText"))]
    //    }
    
    var body: some View {
        
        // Pour faire un Tapbar
        if selectedScreen == 0 {
            Connexion(connexionValidated: $selectedScreen)
        } else  {
            
            TabView {
                LocalisationWorldKids()
                
                .tabItem {
              
                    Label("Carte", systemImage: "map.fill")
                    
                }
                projet5()
                .tabItem {
                   
                    Label("Messagerie", systemImage: "message.fill")
                    
                }
                ListeEvenement()
                .tabItem {
                   
                    Label("Évènements", systemImage: "paintbrush.fill")
                    
                }
                ProfilPerso()
                .tabItem {
                   
                    Label("Profil", systemImage: "person.fill")
                    
                }
            }
            .tint(Color(.red))
        }
        
    }
}



struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
    }
}
