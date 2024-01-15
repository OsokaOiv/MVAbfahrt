//
//  ProfilView.swift
//  MVAbfahrt
//
//  Created by Vio on 18.12.23.
//

import SwiftUI

struct ProfilView: View {
    let events = [
        (Date().addingTimeInterval(-3400), "U3 Universität", 3),
        (Date().addingTimeInterval(-3600), "U3 Münchener Freiheit", 0),
        (Date().addingTimeInterval(-4000), "Bus 53 Münchener Freiheit", 1),
        (Date().addingTimeInterval(-4900), "Bus 53 Kürfürstenplatz", 0),
        (Date().addingTimeInterval(-5000), "Tram 27 Kürfürstenplatz", 2),
        (Date().addingTimeInterval(-7200), "Tram 27 Petruelring", 0)
    ]
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()
                    .foregroundColor(.accent)
                Text("Vinzenz Prakoso") // TODO: Image Pen
                Divider()
                VStack{
                    HStack
                    {
                        Text("MVGreen")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.green)
                        Spacer()
                    }
                    HStack{
                        Text("6")
                        ProgressView("404/1000 Punkte", value: 404, total: 1000).padding().accentColor(.green)
                        Text("7")
                    }
                }.padding()
                List{
                    NavigationLink(destination: BenefitsInfoView()){
                        Text("Punkte einlösen")
                    }
                    NavigationLink(destination: TimelineView(events: events, lineColor: .gray, pointColor: .accentColor)){
                        Text("MVGreen Timeline")
                    }
                }
                Spacer()
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Profil")
        }
    }
}

#Preview {
    ProfilView()
}
