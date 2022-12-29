//
//  Navigation + list + extrated view.swift
//  worldKids
//
//  Created by Apprenant79 on 05/12/2022.
//

import SwiftUI

struct Weather: Identifiable { // va ensemble 1
    var id = UUID()
    let icon : String
    let name : String
    let color: Color
} // va ensemble 1
struct Navigation___list___extrated_view: View { // va ensemble 2
    
    let WeathersList = [ // début de array
        
        Weather(icon :"sun.max.fill", name:"sun", color: .green),
        Weather(icon :"cloud.snow.fill", name:"cloud snow", color: .cyan),
        Weather(icon :"cloud.sleet.fill", name:"storm", color: .red),
        Weather(icon :"moon.fill", name:"talking to the mooooon", color: .orange),
        Weather (icon :"wind.snow", name:"all i want for christmas is youuuuuu", color: .purple),
    ] // fin de array
    
    var body: some View { // va ensemble dans le va ensenmble 1
        NavigationView {
                List (WeathersList) { weather  in
                    NavigationLink(destination: otherWeather(Otherweather: weather), label: {
                        WeatherRow (weather: weather)
                    })
                   // le premier weather renvoi au nom de la variable de la structure WeatherRow
                    // le deuxième weather renvoi au weather in juste au dessus
                }
            }
            } // // va ensemble dans le va ensenmble 1
        } // va ensemble 2
    

struct WeatherRow: View { // va ensemble 3
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
} // va ensemble 3

struct Navigation___list___extrated_view_Previews: PreviewProvider { // va ensemble 4
    static var previews: some View {
        Navigation___list___extrated_view()
            .font(.title2)
    }
} // va ensemble 4

struct otherWeather :View { //début de la view // va ensemble 5
    let Otherweather : Weather
    var body: some View {
        VStack {
            Image(systemName: Otherweather.icon)
            Text(Otherweather.name)
        }
        
    }
} // va ensemble 5 
