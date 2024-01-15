//
//  BenefitsInfoView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct BenefitsInfoView: View {
    @State var points = 404
    
    var body: some View {
        ScrollView
        {
            VStack
            {
                Spacer()
                Text("Fahrt über 3 Stationen").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                // TODO: BenefitRowView for images
                Text("U-Bahn 3 Punkte")
                Text("Tram 2 Punkte")
                Text("Bus 1 Punkt")
                Divider()
                Text("Einlösen").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("Aktuelle Punkte: " + points.formatted())
                NavigationView {
                    List {
                        Button("100 Punkte:  Baum pflanzen"){
                            if (points >= 100) {
                                points -= 100
                            }
                        }
                        Button("1000 Punkte: Deutschland-Ticket"){
                            if (points >= 1000) {
                                points -= 1000
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("MVGreen")
    }
}

#Preview {
    BenefitsInfoView()
}
