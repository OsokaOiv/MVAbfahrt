//
//  FreundView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI
import MapKit

struct FreundView: View {
    var name: String
    var body: some View {
        Map{
            Marker(name, coordinate: .LMU)
                                .tint(.accent)
        }
    }
}

#Preview {
    FreundView(name: "Freund B")
}
