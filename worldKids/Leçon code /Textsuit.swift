//
//  exo 6.swift
//  worldKids
//
//  Created by Apprenant79 on 02/12/2022.
//

import SwiftUI

struct exo_6: View {
    @State private var boutondebase : String = "select a suit"
    var body: some View {
        VStack(spacing: 80.0){ // début de Vstack
           
            
            HStack{ // début de 1ère Hstack
                
                Button {
                boutondebase = "🌳"
                } label: {
                    Image(systemName:"tree")
                        .foregroundColor(Color.white)
                    Text("tree")
                        .foregroundColor(Color.white)
                        .bold()
                    
                }
                .padding()
                .background(.red)
                .cornerRadius(40)
                Button {
                boutondebase = "🌧️"
                } label: {
                    Image(systemName:"cloud.drizzle.fill")
                        .foregroundColor(Color.white)
                    Text("cloud")
                        .foregroundColor(Color.white)
                        .bold()
                }
                .padding()
                .background(.yellow)
                .cornerRadius(40)
            } // fin de première Hstack
            
            Text (boutondebase)
            
           
            HStack { // début de 2ème Hstack
                Button {
                    boutondebase = "🌞"
                } label: {
                    Image(systemName:"sun.max.circle.fill")
                        .foregroundColor(Color.white)
                    Text("sun")
                        .foregroundColor(Color.white)
                        .bold()
                }
                .padding()
                .background(.blue)
                .cornerRadius(40)
                Button {
                   boutondebase = "🌍"
                } label: {
                    Image(systemName:"globe.europe.africa.fill")
                        .foregroundColor(Color.white)
                    Text("globe")
                        .foregroundColor(Color.white)
                        .bold()
                }
                .padding()
                .background(.green)
                .cornerRadius(40)
            } // fin 2ème Hstack
        } // fin de Vstack
    }
    
    struct exo_6_Previews: PreviewProvider {
        static var previews: some View {
            exo_6()
        }
    }
}
