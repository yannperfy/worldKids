//
//  exo 10 .swift
//  worldKids
//
//  Created by Apprenant79 on 05/12/2022.
//

import SwiftUI

struct exo_10_: View {
    struct Weather: Identifiable {
        var id = UUID()
        let icon : String
        let name : String
        let color: Color
        
    }
    let weathers = [ // début de array
        
        Weather(icon :"sun.max.fill", name:"sun", color: .black),
        Weather(icon :"cloud.snow.fill", name:"cloud snow", color: .black),
        Weather(icon :"cloud.sleet.fill", name:"storm", color: .black),
        Weather(icon :"moon.fill", name:"talking to the mooooon", color: .black),
        Weather (icon :"wind.snow", name:"all i want for christmas is youuuuuu", color: .black),
    ] // fin de array
    
    var body: some View {
        List (weathers) { weather  in
            WeatherRow (weather: weather)
// le "weather" in -->  on peut l'appeler comme on veut on s'enfous il ne renvoie a rien//
            
        }
    }
    
    
    struct exo_10__Previews: PreviewProvider {
        static var previews: some View {
            exo_10_()
        }
    }
    struct WeatherRow: View {
        var weather : Weather
       
        var body: some View {
            HStack {
                Image (systemName: weather.icon)
                    .foregroundColor(weather.color)
                    .font(.system(size: 20))
                Text (weather.name)
                    .font(.title2)
                
                
            }
        }
    }
}
