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
    /*@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.137154, longitude: 11.576124), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
     */
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search for a destination", text: $search)
                        .autocorrectionDisabled()
                }
                .padding()
                .background(.gray)
                Map{
                    /*Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow)
                     )*/
                }
                .padding()
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
                Text("Tickets")
                ProgressView("Level 6", value: 30, total: 100).padding()
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Tickets")
        }
    }
}
    
struct FreundeView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Freunde")
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Freunde")
        }
    }
}
    
struct ProfilView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "person.crop.circle")
                Text("Vinzenz Prakoso")
                HStack{
                    Text("6")
                    ProgressView("MVGreen", value: 30, total: 100).padding().accentColor(.green)
                    Text("7")
                }.padding()
                NavigationLink(destination: BenefitsInfoView()){
                    Text("Benefit Info")
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Profil")
        }
    }
}
    
struct ContentView: View {
    var body: some
    View {
        TabView {
            MapView()
                .tabItem {
                    Image(systemName: "location.circle")
                    Text("Karte")
                }
            TicketView()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Tickets")
                }
            FreundeView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Freunde")
                }
            ProfilView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profil")
                }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("MVGO")
        
        /*VStack {
         Image(systemName: "globe")
         .imageScale(.large)
         .foregroundStyle(.tint)
         Text("Hello, world!")
         }
         .padding()*/
    }
}

#Preview {
    ContentView()
}

extension CLLocationCoordinate2D {
    static let Munich = CLLocationCoordinate2D(latitude: 48.137154, longitude: 11.576124)
}
