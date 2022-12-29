//
//  exo 8.swift
//  worldKids
//
//  Created by Apprenant79 on 02/12/2022.
//

import SwiftUI

struct exo_8: View {
    var body: some View {
        VStack { // début de la Vstack
            
            sport(icon : "bolt.car.fill", name: "Flash McQuenne ", color: .red)
            sport(icon : "car.fill", name: "Sally", color: .blue)
            sport(icon : "box.truck.fill", name: "Martin", color: .brown)
            sport(icon : "car.rear.fill", name: "Flo", color: .teal)
            sport(icon : "car.rear.fill", name: "Ramone", color: .purple)
        }
    }
}

struct exo_8_Previews: PreviewProvider {
    static var previews: some View {
        exo_8()
    }
}

struct sport: View {
    let icon : String
    let name : String
    let color: Color
    var body: some View {
        HStack {
            Image (systemName: icon)
                .foregroundColor(color)
                .font(.system(size: 20))
            Text (name)
                .font(.largeTitle)


        }
    }
}
