//
//  ContentView.swift
//  Barcode Scanner
//
//  Created by Daniel Moura on 04/02/24.
//

import SwiftUI

struct BarcodeScannerView: View {
   
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 500)
                
                Label("Scanned barcode:", systemImage: "barcode")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusColor)
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
