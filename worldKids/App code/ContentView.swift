//
//  ContentView.swift
//  worldKids
//
//  Created by Apprenant79 on 01/12/2022.
//

//import SwiftUI
//
//struct ContentView: View {
//    @State private var isShowingPhotoPicker = false
//    @State private var avatarImage = UIImage(named: "Portrait_Placeholder")!
//    var body: some View {
//
////            NavigationView{
//                ScrollView(showsIndicators: false) {
//                VStack {
//
//
//                    VStack {
//                        Text("Profil")
//                            .bold()
//                            .font(.largeTitle)
//
//                            .foregroundColor(.orange)
//                            .padding(.top)
//                        VStack {
//                            Image(uiImage:avatarImage)
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: 100, height: 100)
//                                .clipShape(Circle())
//
//
//                                .onTapGesture {
//                                    isShowingPhotoPicker = true
//                                }
//
//                        }
//
//
//                        .sheet(isPresented: $isShowingPhotoPicker, content: { ImagePicker(avatarImage: $avatarImage)})
//                    }
//
//
//
//                    VStack(alignment: .leading) {
//
//
//                        Text("Informations Personnelles:")
//                            .font(.headline)
//
//                            .multilineTextAlignment(.leading)
//                            .padding()
//
//
//
//
//                        VStack {
//                            TextField("Nom", text: .constant(""))
//
//                                .frame(width: 270, height: 50)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .shadow(color: Color.cyan.opacity(0.3), radius: 4, x: 9, y: 6)
//                                .padding()
//
//                            TextField("Prenom", text: .constant(""))
//
//                                .frame(width: 270, height: 50)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .shadow(color: Color.cyan.opacity(0.3), radius: 4, x: 9, y: 6)
//                                .padding()
//
//                        }
//
//
//
//
//
//
//
//                        TextField("Numero", text: .constant(""))
//                            .frame(width: 270, height: 50)
//                            .background(Color.white)
//                            .cornerRadius(20)
//                            .shadow(color: Color.cyan.opacity(0.3), radius: 4, x: 9, y: 6)
//                            .padding()
//
//                        Text("Adresse Mail")
//                            .font(.headline)
//                            .multilineTextAlignment(.leading)
//
//                        TextField("Adresse mail", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                            .frame(width: 270, height: 50)
//                            .background(Color.white)
//                            .cornerRadius(20)
//                            .shadow(color: Color.cyan.opacity(0.3), radius: 4, x: 9, y: 6)
//                            .padding()
//                            .cornerRadius(20)
//
//                        Text("Informations de vos Enfants")
//                            .font(.headline)
//                            .multilineTextAlignment(.leading)
//
//
//                        HStack(spacing: 30.0) {
//                            TextField("Ecrire les infos", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
//                                .frame(width: 270, height: 50)
//                                .background(Color.white)
//                                .cornerRadius(20)
//                                .shadow(color: Color.cyan.opacity(0.3), radius: 4, x: 9, y: 6)
//                                .padding()
//
//
//
//                            Button("+") {
//                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                            }
//                        }
//                    }
//                  LocalisationWorldKids()
//                        .frame(height: 200)
//                        .cornerRadius(30)
//                        .overlay{
//                            RoundedRectangle(cornerRadius: 30).stroke(.orange, lineWidth: 2)
//
//                        }
//
//                        .padding(.horizontal)
//
//                    Button("Sauvegarder") {
//                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                        }
//                        .font(.title)
//                        .foregroundColor(.black)
//                        .frame(width: 240, height: 50)
//                        .background(Color.yellow)
//                        .cornerRadius(20)
//                    }
//
//
//                }
//
////            }
//        }
//    }
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
