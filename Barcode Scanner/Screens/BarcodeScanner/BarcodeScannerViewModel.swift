//
//  BarcodeScannerViewModel.swift
//  Barcode Scanner
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
