//
//  LocalisationWorldKids.swift
//  worldKids
//
//  Created by Apprenant79 on 13/12/2022.
//

import MapKit
import SwiftUI


struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    var image: String
   
    var desciption: String
    var joinCommu = false
}

struct MapBallon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY), control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.maxY), control: CGPoint(x: rect.maxX, y: rect.minY))
        return path
    }
}
struct LocalisationWorldKids: View {
   
    @State private var showingCredits = false
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 48.85438, longitude: 2.43652), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.05))
 
    
    @State var locations = [
        Location(name: "Famille Malek", coordinate: CLLocationCoordinate2D(latitude: 48.8390, longitude: 2.448451), image: "famille1", desciption: "Bonjour je m'appelle Manuella. Je suis la maman de Rayan et Safia, respectivement 7 ans et 5 ans. Et j'habite à proximité de chez vous, alors rejoingnez notre groupe d'entraide."),
        Location(name: "Famille Rodriguez", coordinate: CLLocationCoordinate2D(latitude: 48.85439, longitude: 2.43648), image: "Famille2",  desciption: "Bonjour je m'appelle Luis. Je suis le papa de Raul 3 ans. Avec mon fils on a rejoint la communauté WordKids il y a 4 mois."),
        Location(name: "Famille Lamark", coordinate: CLLocationCoordinate2D(latitude: 48.85390, longitude: 2.42681), image: "Famille4",  desciption: "Bonjour je m'appelle Josephine Lamark. Je suis le maman de Mike 7 ans et Julie 5 ans. Mes enfants vont à l'école Jules Ferry près de chez nous."),
        Location(name: "Famille El Mansour", coordinate: CLLocationCoordinate2D(latitude: 48.86673, longitude: 2.42639), image: "Famille5",  desciption: "Bonjour je m'appelle Sofiane. Je suis le papa de Samir 5 ans. Et j'habite à proximité de chez vous, alors rejoingnez notre groupe d'entraide."),
        Location(name: "Famille Desouza", coordinate: CLLocationCoordinate2D(latitude: 48.87347, longitude: 2.43472), image: "Famille6",  desciption: "Bonjour je m'appelle Kim. Je suis la maman de sylvie 6 ans et Kevin 8. Et j'habite à proximité de chez vous, alors rejoingnez notre groupe d'entraide."),
        Location(name: "Famille Dramé", coordinate: CLLocationCoordinate2D(latitude: 48.87307, longitude: 2.44439), image: "Famille7",  desciption: "Bonjour je m'appelle Mamadou. Je suis le papa de Sandy 7 ans. Et j'habite à proximité de chez vous, alors rejoingnez notre groupe d'entraide."),
        Location(name: "Famille Yora", coordinate: CLLocationCoordinate2D(latitude: 48.85541, longitude:  2.45256), image: "Famille8",  desciption: "Bonjour je m'appelle Flore. Je suis la maman de Paul 6 ans et Solange 7 ans. Et j'habite la ville de Montreuil où on peut, grâce à la communauté, décourvrir pleins de belles choses pour les enfants."),
    ]
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location    in
                MapAnnotation(coordinate: location.coordinate) {
                    VStack {
//                        NavigationLink(destination: projet2(selectedParent: location),
                        
//                                       label: {
//                            ZStack {
//                                Image(location.image)
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: 44, height: 44)
//                                .clipShape(Circle())
//                                Circle()
//                                    .stroke(Color("couleurText"), lineWidth: 2)
//                            }
//
//                        })
                    Button(action: {
                        showingCredits.toggle()
                    }, label: {
                        
                        ZStack {
                            MapBallon()
                            .frame(width: 95, height: 65)
                                .foregroundColor(.red)
                            Image(location.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(.red, lineWidth: 2)
                            }
                            .padding(.bottom)
                        }
                    })
                    }
                    .sheet(isPresented: $showingCredits) {
                        projet2(selectedParent: location, hideSheet: $showingCredits)
                    }
                }
            }
//            .navigationTitle("Explorer les Familles")
            .edgesIgnoringSafeArea(.top)
           
        }
        
    }
}

struct LocalisationWorldKids_Previews: PreviewProvider {
    static var previews: some View {
        LocalisationWorldKids()
    }
}
