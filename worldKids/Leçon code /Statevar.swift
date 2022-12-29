//
//  SwiftUIView exo 4.swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.
//

import SwiftUI

struct SwiftUIView_exo_4: View {
    @State private var clicker: String = "Knock, Knock"
    var body: some View {
        VStack{
            Text("")
            Spacer()
            Text("\(clicker)")
            Spacer()
            Button(" cliquez sur boutton  " , action : {
                clicker="salut yann"
              
            
            })
            .padding()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .background(Color.blue)
                
            Spacer()
        }
    }
    
    struct SwiftUIView_exo_4_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView_exo_4()
        }
    }
}
