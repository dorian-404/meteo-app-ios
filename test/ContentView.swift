//
//  ContentView.swift
//  test
//
//  Created by user248952 on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("My Location")
                    .font(.system(size: 32, weight: .semibold, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                // Une autre VStack
                VStack(spacing: 1){
                    
                    Image(systemName: "cloud.sun.fill") // picture import
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
            
                    Text("27°")
                        .font(.system(size: 70, weight: .medium, design: .default)).foregroundStyle(.white)
                    
                }
                .padding(.bottom, 50)
                HStack (spacing: 30) {
                    MeteoColonnes(jourSemaine: "MON", nomImage: "cloud.sun.fill", temperature: 27)
                    
                    MeteoColonnes(jourSemaine: "MON", nomImage: "cloud.sun.bolt.fill", temperature: 27)
                    
                    MeteoColonnes(jourSemaine: "MON", nomImage: "cloud.rain.fill", temperature: 27)
                    
                    MeteoColonnes(jourSemaine: "MON", nomImage: "sun.max.fill", temperature: 27)
                    
                    MeteoColonnes(jourSemaine: "MON", nomImage: "cloud.snow.fill", temperature: 27)            }
            }
            .padding(.bottom, 300)
          
           
        }
    }
}

#Preview {
    ContentView()
}

struct MeteoColonnes: View {
    
    var jourSemaine: String
    var nomImage: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(jourSemaine)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: nomImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
        }
    }
}
