//
//  FriendsView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: FreundView(name: "Freund A")){
                    Text("Freund A")
                }
                NavigationLink(destination: FreundView(name: "Freund B")){
                    Text("Freund B")
                }
                NavigationLink(destination: FreundView(name: "Freund C")){
                    Text("Freund C")
                }
                NavigationLink(destination: FreundView(name: "Freund D")){
                    Text("Freund D")
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Freunde")
        }
    }
}

#Preview {
    FriendsView()
}
