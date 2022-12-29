////
////  test } 1 .swift
////  worldKids
////
////  Created by Apprenant79 on 07/12/2022.
////

import SwiftUI

struct Recap: View {
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(.gray)
                .frame(width: 120, height: 190)
                .cornerRadius(40)
                .opacity(0.7)
            VStack {
                Image(systemName: "speaker.wave.3.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Image(systemName: "mic.slash.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                
                Image(systemName: "video.slash.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                Image(systemName: "phone.down.circle.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 50))
                
                
            }
            
        }
    }
    
    struct Recap_Previews: PreviewProvider {
        static var previews: some View {
            Recap()
        }
    }
}
