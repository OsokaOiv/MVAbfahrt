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
                NavigationLink(destination: FreundDetailView(name: "Eva")){
                    FriendRowView(name: "Eva", color: .cyan)
                }
                NavigationLink(destination: FreundDetailView(name: "Ines")){
                    FriendRowView(name: "Ines", color: .red)
                }
                NavigationLink(destination: FreundDetailView(name: "Laurin")){
                    FriendRowView(name: "Laurin", color: .blue)
                }
                NavigationLink(destination: FreundDetailView(name: "Viktoria")){
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
