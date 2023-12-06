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
        udpClient = UDPClient(address: "192.168.101.74", port: 5000)
    }
    
    func sendMessage(message: String) {
        guard let datatosend: Data = message.data(using: .ascii) else {
            print("Failed to convert string to Data")
            return
        }
        udpClient?.send(datatosend)
    }
}
