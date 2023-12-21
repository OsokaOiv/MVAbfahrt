//
//  BenefitsInfoView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct BenefitsInfoView: View {
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Fahrt über 3 Stationen")
                Text("-> mit QR Code ein/auschecken")
                List {
                    // TODO: BenefitRowView for images
                    Text("U-Bahn 2 Punkte")
                    Text("Tram 3 Punkte")
                    Text("Bus 1 Punkt")
                }
                Divider()
                Text("Einlösen").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Aktuelle Punkte: 404")
                List {
                    // TODO: clickable und Punkte Preis
                    Text("10 Bäume pflanzen")
                    Text("1 Deutschland-Ticket")
                }
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("MVGreen")
    }
}

#Preview {
    BenefitsInfoView()
}
