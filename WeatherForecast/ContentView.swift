//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Matt Campbell on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 76, low: 58, isRainy: false)
            DayForecast(day: "Tue", high: 67, low: 45, isRainy: true)
//            DayForecast(day: "Wed", high: 72, low: 60, isRainy: false)
//            DayForecast(day: "Thu", high: 78, low: 65, isRainy: true)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    var iconName: String { isRainy ? "cloud.rain.fill" : "sun.max.fill" }
    var iconColor: Color { isRainy ? Color.blue : Color.yellow }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.ultraLight)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.ultraLight)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
