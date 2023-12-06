//
//  ContentView.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @StateObject var viewModel = ContentViewModel()
        @State var scale = 1.0

        VStack {
            HStack {
                TLButton(title: "Daytime", bgColor: .yellow) {
                    viewModel.sendMessage(message: "daytime")
                }
                
                TLButton(title: "Pre-Show", bgColor: .orange) {
                    viewModel.sendMessage(message: "evening")
                }
            }
            HStack {
                TLButton(title: "Party", bgColor: .pink) {
                    viewModel.sendMessage(message: "party")
                }
                TLButton(title: "Idle", bgColor: .blue) {
                    viewModel.sendMessage(message: "after")
                }
            }
            HStack {
                TLButton(title: "Next", bgColor: .green) {
                    viewModel.sendMessage(message: "next")
                }
                TLButton(title: "Photo", bgColor: .purple) {
                    viewModel.sendMessage(message: "photo")
                    
                }
            }
            HStack {
                TLButton(title: "Test", bgColor: .black) {
                    viewModel.sendMessage(message: "test")
                }
                TLButton(title: "OFF", bgColor: .red) {
                    viewModel.sendMessage(message: "black")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
