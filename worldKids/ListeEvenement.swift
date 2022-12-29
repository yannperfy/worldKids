////
////  1-page evenement liste .swift
////  worldKids
////
////  Created by Apprenant79 on 06/12/2022.
////
//
import SwiftUI


struct Evenement: Identifiable { // va ensemble 1
    var id = UUID()
    var nom: String
    var image : String
    var texte : String
} // va ensemble 1



struct ListeEvenement : View { // va ensemble 2
    private var pickerEvent = ["Evènements", "Mes évènements"]
    @State private var selection = "Evènements"
    @State private var JeParticipe: String = "Je participe"
    
    let monTableauEvenement = [
        Evenement (nom: "Atelier crêpes", image : "ateliercrepe", texte : """
Venez faire des crêpes avec vos enfants, sans nutella bien sur.
L'atelier aura lieu à 15h ce mercredi pour accueillir le gouter comme il se doit.
Vous aurez juste à rejoindre l'appel visio du groupe.
Alors sortez vos plus beau tablier avec les enfants pour passer un bon moment en famille.
"""),
        Evenement (nom: "Assembler des legos ", image : "lego", texte : """
Avec mon fils on assemble des legos pour faire des petites comme des grnades constructions. Que ce soit une maison, des fleurs, une tour ou encore un grand pont, avec mes deux fisl nous allons vous montrer comment faire de belles structures tout en légo.
L'atelier a lieu a 14h en visio.
A bientôt
"""),
        Evenement (nom: "Activité pate à modeler ", image : "pateamodeler", texte : """
Venez participer à un atelier pate a modeler et pate à selle, pour décorer la chambre des enfants, ou pour les offrir à quelqu'un. Mon fils de 4 ans aime beaucoup cette activité, ça lui permet de découvrir différentes couleurs et textures, pour changer du quotidien.

Vous pourrez venir vous amuser avec nous à 11H en visio ce mercredi après un bon petit déjeuner.
Hâte de voir vos bouts de chou, à bientôt
"""),
        Evenement (nom:" Guirlande de Noël", image: "guirlande", texte: """
    Avec mes filles ont vous montre comment faire des jolies guirlandes pour noël avec des mmatières différentes de celles que vous trouverez en grande surface pour attendre les cadeau comme il se doit.
        
    On sera en visio avec les enfant le lundi 17 décembre à 13h en visio, pour vous montrer les matériaux qu'il faut et ensuite on passe à la confection.
    """),
        Evenement (nom: " Galette des rois", image: "galette", texte: """
        Pour changer cette année, testez la galette des rois à la pomme avec
        vos enfants. C'est pas très conventionnel mais si comme ma fille votre enfant est alérgique à la frangipane, vous pouvez changer pour de la compote de pomme, ou de poire comme vous préférez.
        
        Avec Rachel, on vous retrouve a 15h, le 5 janvier pour être prêt le jour J
        """),
        Evenement (nom : "Dissocier les formes et les couleurs", image : "formescouleurs", texte: """
Premier pas pour bébé pour dissocier les couleurs et les formes. Avec Gaby on passe a la dissociation des couleurs et des formes à travers des méteaux en bois pour qu'elle puisse les colorer par la suite avec de la peinture,
Equipez vous et vos enfants pour ne pas tacher vos murs et rejoignez nous, samedi matin à 10h
""" ),
        Evenement (nom: " Aide aux devoirs", image: "aidedevoir", texte: """
        Bonjour a tous cher parent de la communauté d'entraide de Vincenne. Je suis le parent du petit Jeremy et la petite Eva, respectivement en classe de CE1 ET CM1. J'étais enseignant avant la venue des enfants, ainsi si vous voulez je propose de l'aide aux devoirs pour vos enfants,
        contactez moi en visio, ou sur le groupe ou en privé via Message pour en discuter
        """),
    ]
    let mesEvenements = [
        Evenement (nom:" Guirlande de Noël", image: "guirlande", texte: """
    Avec mes filles ont vous montre comment faire des jolies guirlandes pour noël avec des mmatières différentes de celles que vous trouverez en grande surface pour attendre les cadeau comme il se doit.
        
    On sera en visio avec les enfant le lundi 17 décembre à 13h en visio, pour vous montrer les matériaux qu'il faut et ensuite on passe à la confection.
    """),
        Evenement (nom : "Dissocier les formes et les couleurs", image : "formescouleurs", texte: """
Premier pas pour bébé pour dissocier les couleurs et les formes. Avec Gaby on passe a la dissociation des couleurs et des formes à travers des matériaux en bois pour qu'elle puisse les colorer par la suite avec de la peinture,
Equipez vous et vos enfants pour ne pas tacher vos murs et rejoignez nous, samedi matin à 10h
""" ),
        Evenement (nom: " Aide aux devoirs", image: "aidedevoir", texte: """
        Bonjour a tous cher parent de la communauté d'entraide de Vincenne. Je suis le parent du petit Jeremy et la petite Eva, respectivement en classe de CE1 ET CM1. J'étais enseignant avant la venue des enfants, ainsi si vous voulez, je propose de l'aide aux devoirs pour vos enfants,
        contactez moi en visio, ou sur le groupe ou en privé via Message pour en discuter
        """),
    ]
    var body: some View { // va ensemble dans le va ensenmble 1
        
        
        NavigationView {
            ZStack {
                Rectangle()
                    .foregroundColor(Color("couleurFond"))
                    .ignoresSafeArea()
                
                
                    
                    VStack {
                        Text ("Les évènements")
                            .font(Font.custom("Lemon-Regular", size: 30))
                            .bold()
                            .foregroundColor(Color("couleurText"))
                        
                        Picker("Event", selection: $selection){
                            ForEach(pickerEvent, id: \.self) { event in
                                Text(event)
                                    .font(.largeTitle)
                            }
                        }.pickerStyle(.segmented)
                            .padding()
                        ScrollView(showsIndicators: false) {
                        if selection == "Evènements" {
                            ForEach(monTableauEvenement) {evenement in
                                NavigationLink (destination : EnfantDetail (apparenceEvenement :evenement),label: {
                                    evenementExtrected(event:evenement) //<- extraction de vue List
                                })
                            }
                        } else {
                            ForEach(mesEvenements) {evenement in
                                NavigationLink (destination : EnfantDetail (apparenceEvenement :evenement),label: {
                                    evenementExtrected(event:evenement) //<- extraction de vue List
                                })
                            }
                        }
                        
                    }
                }
            }// va ensemble dans le va ensenmble 1
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink (destination: creerSonEvenement()) {
                        Image(systemName: "plus")
                        
//                            .fontWeight(.bold)
                            .font(Font.custom("Lemon-Regular", size: 20))
//                            .bold()
                            .foregroundColor(.black)
                            .padding(10)
                            .background (Color.yellow)
                            .cornerRadius(50)
                            .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 4, y: 4)
                    }
                }
            }
        } // va ensemble 2
    }
    
    //
    
}
   
    
    
    
    // vue détaillée de l'évenement selectionné
    struct EnfantDetail : View { // va ensemble 5
        let couleurFond : Color = Color("couleurFond")
        var apparenceEvenement : Evenement
        @State private var JeParticipe: String = "Je participe"
        var body: some View{
            ZStack {
                couleurFond.ignoresSafeArea()
                VStack { // début de Vstack
                    Text (apparenceEvenement.nom)
                        .font(Font.custom("Lemon-Regular", size: 30))
                        .bold()
                        .foregroundColor(Color("couleurText"))
                    
                    Image (apparenceEvenement.image)
                        .resizable()
                        .frame(width: 300, height: 200)
                        .cornerRadius(30)
                    Text ( apparenceEvenement.texte)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .foregroundColor(.black)
                        .background(.white)
                        .cornerRadius(40)
                        .shadow(color: Color ("couleurBleu").opacity(0.5), radius: 7, x: 8, y: 10)
                        .padding()
                    
                    HStack {
                        
                        Button {
                            JeParticipe = "Ajouté ✓"
                        } label: {
                            Text(JeParticipe)
                                .font(Font.custom("Lemon-Regular", size: 15))
                                .foregroundColor(.black)
                                .padding()
                                .background (JeParticipe == "Ajouté ✓" ? Color("couleurBleu") : Color.yellow)
                                .cornerRadius(15)
                                .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 1, y: 1)
                        }
                        NavigationLink (destination:
                                            ____conversation_pour_evenement_()) {
                            Text("Contacter Samy")
                                .font(Font.custom("Lemon-Regular", size: 15))
                                .foregroundColor(.black)
                                .padding()
                                .background (Color.yellow)
                                .cornerRadius(15)
                                .shadow(color: Color.yellow.opacity(0.3), radius: 7, x: 1, y: 1)
                        }
                        
                        
                    }
                }
            }
        }
    }



struct evenementExtrected : View {
    var event : Evenement
    
    var body: some View {
        HStack(alignment:.top) {
            VStack {
                Image(event.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            }
            VStack(alignment: .leading) {
                Text("")
                Text(event.nom)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
                Text("")
                Text(event.texte)
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .lineLimit(2)
            }
            Spacer()
        }
        .background(.white)
        .cornerRadius(20)
        .shadow(color: Color("couleurBleu").opacity(0.6), radius: 3, x: 8, y: 7)
        .padding()
    }
}


// strucutre identifiable pour faire une base de donnée de la famille : localisaiton + image + description + les enfants
// une navigationview qui affiche la map
// un tableau qui renvoie à la navigationview ou il faut mettre les familles
//
//


struct __page_evenement_liste__Previews: PreviewProvider { // va ensemble 4
    static var previews: some View {
        ListeEvenement()
    }
} // va ensemble 4
