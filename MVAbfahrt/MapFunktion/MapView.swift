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
                    Map{
                        
                    }
                }
            case "PathView":
                VStack {
                    Image("Tickets")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .onTapGesture {
                            showView = "MapView"
                        }
                    Button("Ziel: "+destination)
                    {
                        showView = "NextView"
                    }
                }
            case "NextView":
                VStack {
                    Text("This is the NextView")
                    Button("Back")
                    {
                        showView = "MapView"
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
