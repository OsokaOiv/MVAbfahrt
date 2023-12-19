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
                NavigationLink(destination: FriendMapView(name: "Eva")){
                    FriendRowView(name: "Eva", color: .cyan)
                }
                NavigationLink(destination: FriendMapView(name: "Ines")){
                    FriendRowView(name: "Ines", color: .red)
                }
                NavigationLink(destination: FriendMapView(name: "Laurin")){
                    FriendRowView(name: "Laurin", color: .blue)
                }
                NavigationLink(destination: FriendMapView(name: "Viktoria")){
                    FriendRowView(name: "Viktoria", color: .indigo)
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
