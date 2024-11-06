//
//  WatchFacePreviewView.swift
//  SketchFace Watch App
//
//  Created by Tafadzwa Alexander Razaro on 2024/11/06.
//

import SwiftUI

struct WatchFacePreviewView: View {
    @State private var showImagePicker = false
    
    var body: some View {
        VStack {
            // Show the selected face here as an image or preview
            Image(systemName: "applewatch")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Button("Take Screenshot") {
                // Here you could implement a screenshot-taking feature
                // Save image to gallery or share
            }
            .padding()
        }
    }
}

