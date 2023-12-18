//
//  FriendRowView.swift
//  MVAbfahrt
//
//  Created by Vio on 18.12.23.
//

import SwiftUI

struct FriendRowView: View {
    var name: String
    var color: Color
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(color)
            VStack(alignment: .leading, spacing: 6)
            {
                Text(name)
                    .fontWeight(.bold)
                Text("U3 Universität")
                    .fontWeight(.light)
            }
        }
    }
}

#Preview {
    FriendRowView(name: "Vinzenz", color: .accent)
}
