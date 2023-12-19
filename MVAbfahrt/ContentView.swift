//
//  ContentView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Tickets")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}
    
struct ContentView: View {
    var body: some
    View {
        TabView {
            MapView()
                .tabItem {
                    Label("Karte", systemImage: "location.circle")
                }
            TicketView()
                .tabItem {
                    Label("Tickets", systemImage: "tag")
                }
            FriendsView()
                .tabItem {
                    Label("Freunde", systemImage: "person.2.fill")
                }
            ProfilView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profil")
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("MVGO")
    }
}

#Preview {
    TicketView()
}
