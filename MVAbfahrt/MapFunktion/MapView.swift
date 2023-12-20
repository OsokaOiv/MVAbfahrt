//
//  MapView.swift
//  MVAbfahrt
//
//  Created by Vio on 19.12.23.
//

import SwiftUI
import MapKit

// TODO: Weg Anzeige (Wie MVGO App? -> Reichen Screenshots)
// Dann statt textField einen Button zu den Screenshots zum durchklicken
struct MapView: View {
    @State private var searchField: String = ""
    @State private var destination: String = ""
    @State private var showView = "MapView"
    
    var body: some View {
        switch showView {
            case "MapView":
                VStack{
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search for a destination", text: $searchField)
                            .autocorrectionDisabled()
                            .onSubmit {
                                showView = "PathView"
                                destination = searchField
                                searchField = ""
                            }
                    }
                    .padding()
                    .background(.accent)
                    Map {
                        MapPolygon(coordinates: [.LMU,.Munich])
                            .foregroundStyle(.orange.opacity(0))
                    }
                    .mapControls {
                        // MapUserLocationButton()
                        MapCompass()
                        MapScaleView()
                    }
                }
            case "PathView":
                VStack {
                    Image("VonWoNachWo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .onTapGesture {
                            showView = "NextView"
                        }
                    /*Button("Ziel: "+destination)
                    {
                        showView = "NextView"
                    }*/
                }
            case "NextView":
                VStack {
                    Button("Back")
                    {
                        showView = "MapView"
                    }
                    Image("MapRoute")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .onTapGesture {
                            showView = "NextView"
                        }
                }
            default:
                Text("Default") // you should never reach this
        }
    }
}

#Preview {
    MapView()
}

extension CLLocationCoordinate2D {
    static let Munich = CLLocationCoordinate2D(latitude: 48.137154, longitude: 11.576124)
    static let LMU = CLLocationCoordinate2D(latitude: 48.150835093467876,  longitude: 11.580440382887316)
}
