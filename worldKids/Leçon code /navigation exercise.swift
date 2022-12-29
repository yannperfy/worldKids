//
//  exo 11.swift
//  worldKids
//
//  Created by Apprenant79 on 05/12/2022.
//

import SwiftUI

struct exo_navigation_exercise: View {
    var body: some View {
        NavigationView {
            NavigationLink{
                Image("lama")
                } label:  {
                    HStack {
                        Text("click hear")
                        Image(systemName: "arrowshape.right.fill")
                    }
                    
                    
                }
        }
    }
    struct exo_11_Previews: PreviewProvider {
        static var previews: some View {
            exo_navigation_exercise()
        }
    }
}
