//
//  exo swift UI 2.swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.
//

import SwiftUI

struct exo_swift_UI_2: View {
    var body: some View {
        VStack {
            
            
            HStack {
                Image(systemName: "person.crop.circle")
                    .foregroundColor(.orange)
                    .font(.system(size: 100))
                
                VStack (alignment:.leading){
                    Text("Danilo Santana")
                        .font(.largeTitle)
                    Text("Brazil")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Text("")
                    Text("Racing Driver")
                        .bold()
                    
                }
                
            }
        }
    }
}
    














        struct exo_swift_UI_2_Previews: PreviewProvider {
            static var previews: some View {
                exo_swift_UI_2()
            }
        }
    
