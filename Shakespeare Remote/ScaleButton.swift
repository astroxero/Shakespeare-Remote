//
//  ScaleButton.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 12/8/23.
//

import SwiftUI

struct ScaleButton: ButtonStyle {
    @GestureState private var isPressed = false
    @State private var isAnimating = false

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(isAnimating ? 1.4 : 1)
            .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0), value: isAnimating)
            .gesture(
                LongPressGesture(minimumDuration: 0.01)
                    .updating($isPressed) { currentState, gestureState, _ in
                        gestureState = currentState
                    }
                    .onChanged { _ in
                        isAnimating = true
                    }
                    .onEnded { _ in
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            isAnimating = false
                        }
                    }
            )
    }
}
