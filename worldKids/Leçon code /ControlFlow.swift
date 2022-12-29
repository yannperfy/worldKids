//
//  exo 7.swift
//  worldKids
//
//  Created by Apprenant79 on 02/12/2022.
//

import SwiftUI

struct exo_7: View {
    @State private var pourcentage : Double = 25.0
    var backgroundColor : Color { pourcentage > 30 ? .red : .cyan }
    func backgroundColorFunc() -> Color {pourcentage > 30 ? .red :.cyan }
    
    var body: some View {
    
        ZStack { // début de Zstack
            backgroundColor.ignoresSafeArea()
          
            
        VStack{ // début de ma Vstack
                Text("\(Int(pourcentage*1))°c")
                    .font(.largeTitle)

                switch pourcentage {
                case 35...: Text("Très chaud")
                case 30..<35: Text("Chaud")
                case 15...30: Text("Normal")
                default: Text("Froid")
                }
                Slider (value: $pourcentage, in: -10...50, step: 1)
                    .padding()
                    
           
            } // fin de Vstack
        } // fin de ma Zstack
    }
    
    struct exo_7_Previews: PreviewProvider {
        static var previews: some View {
            exo_7()
        }
    }
}
