//
//  ContentViewModel.swift
//  Shakespeare Remote
//
//  Created by Beau Rubin-Rottenberg on 11/13/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    private var udpClient: UDPClient?
    
    init() {
        udpClient = UDPClient(address: "192.168.86.250", port: 5000)
    }
    
    func sendMessage(message: String) {
        if let data = message.data(using: .utf8) {
            udpClient?.send(data)
        }
    }
}
