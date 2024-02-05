//
//  Alert.swift
//  Barcode Scanner
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid device input", 
                                              message: CameraError.invalidDeviceInput.rawValue,
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedValue = AlertItem(title: "Invalid scanned value",
                                               message: CameraError.invalidScannedValue.rawValue,
                                               dismissButton: .default(Text("OK")))
}
