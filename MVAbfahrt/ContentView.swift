//
//  ContentView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var search: String = ""
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search for a destination", text: $search)
                        .autocorrectionDisabled()
                }
                .padding()
                .background(.accent)
                Map{
                    
                }
                .background(.accent)
            }
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Karte")
    }
}
    
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

extension CLLocationCoordinate2D {
    static let Munich = CLLocationCoordinate2D(latitude: 48.137154, longitude: 11.576124)
    static let LMU = CLLocationCoordinate2D(latitude: 48.150835093467876,  longitude: 11.580440382887316)
}
