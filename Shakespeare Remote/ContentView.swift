//
//  ContentView.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @State var showingSheet = false
    @AppStorage("FirstStart") var alertShouldBeShown = true
    
    var body: some View {
        VStack {
            Button {
                showingSheet = true
                Haptics.shared.softRoll()
            } label: {
                HStack {
                    Image(systemName: "info.circle.fill")
                    Text("Info")
                }
            }
            .padding(.top)
            HStack {
                TLButton(title: "Daytime", bgColor: .yellow) {
                    viewModel.sendMessage(message: "daytime")
                }
                .buttonStyle(ScaleButton())
                TLButton(title: "Pre-Show", bgColor: .orange) {
                    viewModel.sendMessage(message: "evening")
                }
                .buttonStyle(ScaleButton())
            }
            HStack {
                TLButton(title: "Party", bgColor: .pink) {
                    viewModel.sendMessage(message: "party")
                }
                .buttonStyle(ScaleButton())
                TLButton(title: "Idle", bgColor: .blue) {
                    viewModel.sendMessage(message: "after")
                }
                .buttonStyle(ScaleButton())
            }
            HStack {
                TLButton(title: "Next", bgColor: .green) {
                    viewModel.sendMessage(message: "next")
                }
                .buttonStyle(ScaleButton())
                TLButton(title: "Photo", bgColor: .purple) {
                    viewModel.sendMessage(message: "photo")
                }
                .buttonStyle(ScaleButton())
            }
            HStack {
                TLButton(title: "Test", bgColor: .gray) {
                    viewModel.sendMessage(message: "test")
                }
                .buttonStyle(ScaleButton())
                .zIndex(0)
                TLButton(title: "OFF", bgColor: .red) {
                    viewModel.sendMessage(message: "black")
                }
                .buttonStyle(ScaleButton())
            }
        }
        .sheet(isPresented: $showingSheet) {
            WelcomeView(isPresented: $showingSheet)
        }
        .onAppear {
            checkFirstStart()
        }
    }
    private func checkFirstStart() {
        if alertShouldBeShown {
            showingSheet = true
            alertShouldBeShown = false
        }
    }
}

#Preview {
    ContentView()
}
