//
//  BenefitsInfoView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct BenefitsInfoView: View {
    let events = [
        (Date(), "U3 Universität"),
        (Date().addingTimeInterval(-3600), "U3 Münchener Freiheit"),
        (Date().addingTimeInterval(-7200), "Bus 53 Münchener Freiheit"),
        (Date().addingTimeInterval(-7200), "Bus 53 Kürfürstenplatz"),
        (Date().addingTimeInterval(-7200), "Tram 27 Kürfürstenplatz"),
        (Date().addingTimeInterval(-10800), "Tram 27 Petruelring")
    ]
    
    var body: some View {
        ScrollView
        {
            VStack
            {
                TimelineView(events: events, lineColor: .gray, pointColor: .accentColor)
                Text("Fahrt über 3 Stationen")
                Text("-> mit QR Code ein/auschecken")
                ScrollView {
                    // TODO: BenefitRowView for images
                    Text("U-Bahn 2 Punkte")
                    Text("Tram 3 Punkte")
                    Text("Bus 1 Punkt")
                }
                Divider()
                Text("Einlösen").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Aktuelle Punkte: 404")
                ScrollView {
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
