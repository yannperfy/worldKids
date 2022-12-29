
//  exo swift UI 1 .swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.


import SwiftUI

struct exo_swift_UI_1_: View {
    let couleurFond : Color = Color("couleurFond")
    var body: some View {
        ZStack {
            couleurFond.ignoresSafeArea()
            
            HStack(alignment: .top) {
                VStack {
                    Image("ateliercrepe")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                }
                VStack(alignment: .leading) {
                    Text("Atelier crêpes")
                        .font(.headline)
                        .bold()
                    Text("")
                    Text("Avec mon fils, on vous invite a partager un gouter en faisant des crêpes (...)")
                        .font(.subheadline)
                        .foregroundColor(.black)
                }
            }
            .background(.white)
            .cornerRadius(20)
            .shadow(color: Color.cyan.opacity(0.3), radius: 8, x: 9, y: 5)
            
            
        }
    }
    struct exo_swift_UI_1__Previews: PreviewProvider {
        static var previews: some View {
            exo_swift_UI_1_()
        }
    }
}

