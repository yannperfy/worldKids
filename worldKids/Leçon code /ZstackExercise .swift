//
//  SwiftUIView.swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.orange)
            Rectangle ()
                .frame(width: 250, height: 200)
                .foregroundColor(.green)
            Circle()
                .frame(width: 150, height :150)
                .foregroundColor(.blue)
            Text ("My first SxiftUI App")
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
