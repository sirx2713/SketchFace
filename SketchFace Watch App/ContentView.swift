//
//  ContentView.swift
//  SketchFace Watch App
//
//  Created by Tafadzwa Alexander Razaro on 2024/11/06.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedFaceIndex = 0
    let watchFaces = ["Classic", "Modern", "Minimalist", "Sporty"] // Example face names
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Select a Watch Face")
                    .font(.system(size: 18))
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<watchFaces.count, id: \.self) { index in
                            VStack {
                                Image(systemName: "applewatch") // Placeholder image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                    .background(Color.gray.opacity(0.2))
                                    .clipShape(Circle())
                                    .onTapGesture {
                                        selectedFaceIndex = index
                                    }
                                Text(watchFaces[index])
                            }
                            .padding()
                        }
                    }
                }
                
                Text("Selected Face: \(watchFaces[selectedFaceIndex])")
                    .font(.system(size: 12))
                    .padding()
            }
            .navigationTitle("Apple Watch Faces")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

