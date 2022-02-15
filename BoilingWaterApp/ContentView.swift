//
//  ContentView.swift
//  BoilingWaterApp
//
//  Created by Lillian Yang on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Hello, world!")
                .padding()
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
