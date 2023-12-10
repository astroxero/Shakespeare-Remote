//
//  ScaleButton.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 12/8/23.
//

import SwiftUI

struct ScaleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ScaleButtonView(configuration: configuration)
    }

    struct ScaleButtonView: View {
        @State private var isAnimating = false
        let configuration: Configuration

        var body: some View {
            configuration.label
                .scaleEffect(isAnimating ? 0.6 : 1.0)
                .animation(.spring(response: 0.3, dampingFraction: 0.5), value: isAnimating)
                .onChange(of: configuration.isPressed) { newValue, oldValue in
                    if newValue {
                        isAnimating = true
                        Haptics.shared.hit()
                    } else {
                        // Delay to allow animation to complete
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            isAnimating = false
                        }
                    }
                }
        }
    }
}
