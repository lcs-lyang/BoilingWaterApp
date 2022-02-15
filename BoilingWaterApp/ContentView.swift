//
//  ContentView.swift
//  BoilingWaterApp
//
//  Created by Lillian Yang on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    
    @State var temperatureInCelcius = 0.0
    
    //MARK: Computed Properties
    
    var atmosphericPressure: Double{
        return (temperatureInCelcius * 5) - 400
    }
    
    var body: some View {
        
        VStack{
            Text("Calculate the atmospheric pressure!")
                .padding()
            Text("Temperature at which water begins to boil:")
                .padding()
            
            Slider(value: $temperatureInCelcius,
                   in: 80.0...200.0,
                   step: 0.1,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("80")
            },
                   maximumValueLabel: {
                        Text("200")
            })
                .padding()
            
            //Review this please: String Interpolation
            Text("\(String(format: "%.1f", temperatureInCelcius)) °C")
                .bold()
                .padding()
            
            Button(action: {

                print("Button was pressed")
            }, label: {
                Text("Calculate")
            })
            .buttonStyle(.bordered)
            .padding()
            
            Text("The Atmospheric Pressure is \(String(format: "%.1f", atmosphericPressure)) kPa")
            
            Text("You are above sea level")

            Spacer()
        }
        
        .navigationTitle("Boiling Water")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
