//
//  exo 5 .swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.
//

import SwiftUI

struct exo_5_: View {
    @State private var change: Color = .white
    var body: some View {
        
        
        ZStack {
            change.ignoresSafeArea()
            HStack {
                //                Rectangle()
                //                    .foregroundColor(Color.orange)
                //                    .frame(width: 100, height: 50)
                //                    .cornerRadius(20)
                //
                //
                //                Rectangle()
                //                    .foregroundColor(Color.green)
                //                    .frame(width: 100, height: 50)
                //                    .cornerRadius(20)
                //
                //
                //                Rectangle()
                //                    .foregroundColor(Color.blue)
                //                    .frame(width: 100, height: 50)
                //                    .cornerRadius(20)
                //
                //                }
                
                Button(action: {
                    change = .pink
                    
                }, label: {
                    Image(systemName: "highlighter")
                        .foregroundColor(Color.white)
                    Text ("pink")
                        .foregroundColor(Color.white)
                        .bold()
                })
                .padding()
                .background(.pink)
                .cornerRadius(40)
                
                Button(action: {
                    change = .yellow
                }, label: {
                    Image(systemName: "highlighter")
                        .foregroundColor(Color.white)
                    Text ("yellow")
                        .foregroundColor(Color.white)
                        .bold()
                })
                .padding()
                .background(.yellow)
                .cornerRadius(40)
                
                Button(action: {
                    change = .blue
                }, label: {
                    Image(systemName: "highlighter")
                        .foregroundColor(Color.white)
                    Text ("blue")
                        .foregroundColor(Color.white)
                        .bold()
                })
                .padding()
                .background(.blue)
                .cornerRadius(40)
                //                HStack {
                //
                //
                //                    Text ("green")
                //                        .foregroundColor(Color.white)
                //                        .bold()
                //                    Text ("bleu")
                //                        .foregroundColor(Color.white)
                //                        .bold()
                //
                //
                //
                //
                //            }
            }
            
        }
    }
    
    
    struct exo_5__Previews: PreviewProvider {
        static var previews: some View {
            exo_5_()
        }
    }
    
}
