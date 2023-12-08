//
//  ScaleButton.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 12/8/23.
//

import SwiftUI

struct ScaleButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
                    .animation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0), value: configuration.isPressed)
    }
}
