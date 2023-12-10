//
//  Haptics.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 12/10/23.
//

import UIKit

class Haptics {
    
    static let shared = Haptics()
    
    let softhammer = UIImpactFeedbackGenerator(style: .rigid)
    let medhammer = UIImpactFeedbackGenerator(style: .medium)
    let hardhammer = UIImpactFeedbackGenerator(style: .heavy)
    
    init() {
        softhammer.prepare()
        medhammer.prepare()
        hardhammer.prepare()
    }
    
    func hit(_ intensity: CGFloat = 1.0) {
        hardhammer.impactOccurred(intensity: intensity)
    }
    func softRoll(_ intensity: CGFloat = 1.0) {
        softhammer.impactOccurred(intensity: intensity)
    }
    func med(_ intensity: CGFloat = 1.0) {
        medhammer.impactOccurred(intensity: intensity)
    }
}
