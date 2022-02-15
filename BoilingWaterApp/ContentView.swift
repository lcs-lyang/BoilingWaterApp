//
//  ContentView.swift
//  BoilingWaterApp
//
//  Created by Lillian Yang on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("Calculate the atmospheric pressure!")
                .padding()
            Text("Temperature at which water begins to boil:")
                .padding()
            
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
                .padding()
            
            
            Text("50")
            
            Button(action: {

                print("Button was pressed")
            }, label: {
                Text("Calculate")
            })
            .buttonStyle(.bordered)
            .padding()
            
            Text("The Atmospheric Pressure is...")
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
