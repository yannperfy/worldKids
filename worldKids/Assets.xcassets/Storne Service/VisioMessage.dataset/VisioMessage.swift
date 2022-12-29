//
//  VisioMessage.swift
//  Storne Service
//
//  Created by Yann Perfy on 20/12/2022.

import SwiftUI

struct visioMessage: View {
    var body: some View {
        ZStack { // début Zstack
            Image("Ronald")
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Image("Samy")
                        .resizable()
                        .frame(width: 150, height: 210)
                    .cornerRadius(20)
                }
                .padding(10)
                    
                Spacer()
                ZStack {
                    
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 300, height: 120.0)
                        .cornerRadius(40)
                        .opacity(0.8)
                    
                    HStack {
                        
                        Image(systemName: "speaker.wave.3.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                        Image(systemName: "mic.slash.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                        
                        Image(systemName: "video.slash.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                        Image(systemName: "phone.down.circle.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 50))
                    }
                    
                }
//                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                
            }
                    }
                }
            }
        //
    

struct visioMessage_Previews: PreviewProvider {
    static var previews: some View {
        visioMessage()
    }
}
