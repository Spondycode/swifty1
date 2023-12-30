//
//  ContentView.swift
//  swifty1
//
//  Created by David Allen on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Platja d'Aro, GI")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                temperature: 32)
                
                    HStack (spacing: 15) {
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "sun.max.fill",
                                       temperature: 32)
                        WeatherDayView(dayOfWeek: "WED",
                                       imageName: "cloud.sun.fill",
                                       temperature: 30)
                        WeatherDayView(dayOfWeek: "THURS",
                                       imageName: "cloud.rain.fill",
                                       temperature: 29)
                        WeatherDayView(dayOfWeek: "FRI",
                                       imageName: "cloud.sun.fill",
                                       temperature: 27)
                        WeatherDayView(dayOfWeek: "SAT",
                                       imageName: "cloud.bolt.fill",
                                       temperature: 32)
                    }
                    Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .black,
                                  backgroundColor: .mint)
                }
                .padding()
                .frame(width: nil, height: 0.0)
                Spacer()
                }
                   
                }
                
            }
        }



#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName:String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.white, .yellow, .blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {

        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}


struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 40, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
            
            Text("\(temperature)°c")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40.0)
    }
}


