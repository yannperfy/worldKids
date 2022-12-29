//
//  Enfant - evenement detaillé.swift
//  worldKids
//
//  Created by Apprenant79 on 06/12/2022.
//

import SwiftUI

struct Enfant___evenement_detaille_: View {
    let couleurFond : Color = Color("couleurFond")
    var body: some View {
        ZStack {
            couleurFond.ignoresSafeArea()
            
            VStack { // début de Vstack
                
                Text ("Atelier crêpe")
//                    .fontWeight(.medium)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("couleurText"))
                Image ("Samy")
                    .resizable()
                    .frame(width: 380, height: 300)
                Text (" avec Samy et Ibrahim")
                    .bold()
                Text ( """
Venez faire des crêpes avec vos enfants, sans nutella bien sur.
L'atelier aura lieu à 15h pour accueillir le gouter comme il se doit.
Vous aurez juste à rejoindre l'appel visio du groupe.
Alors sortez vos plus beau tablier avec les enfants pour passer un bon moment en famille.
""")
                .multilineTextAlignment(.leading)
                .padding()
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(40)
                .shadow(color: Color.cyan.opacity(0.3), radius: 7, x: 8, y: 10)
                .padding()
                Spacer()
                
            } // fin de la Vstack
        }
    }
    
    
}
        struct Enfant___evenement_detaille__Previews: PreviewProvider {
            static var previews: some View {
                Enfant___evenement_detaille_()
            }
        }
  
    

