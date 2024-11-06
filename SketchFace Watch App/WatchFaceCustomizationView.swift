//
//  WatchFaceCustomizationView.swift
//  SketchFace Watch App
//
//  Created by Tafadzwa Alexander Razaro on 2024/11/06.
//

import SwiftUI

struct WatchFaceCustomizationView: View {
    @State private var selectedColor = "Black"
    @State private var showComplication = false
    let colors = ["Black", "White", "Blue", "Red"]
    
    var body: some View {
        VStack {
            Text("Customize Your Watch Face")
                .font(.title)
            
            Picker("Select Color", selection: $selectedColor) {
                ForEach(colors, id: \.self) { color in
                    Text(color)
                }
            }
            .padding()
            
            Toggle("Show Complication", isOn: $showComplication)
                .padding()
            
            Text("Selected Color: \(selectedColor)")
            Text("Complication: \(showComplication ? "Visible" : "Hidden")")
        }
        .padding()
    }
}

