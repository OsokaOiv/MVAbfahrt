//
//  ProfilView.swift
//  MVAbfahrt
//
//  Created by Vio on 18.12.23.
//

import SwiftUI

struct ProfilView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()
                    .foregroundColor(.accent)
                Text("Vinzenz Prakoso")
                HStack{
                    Text("6")
                    ProgressView("MVGreen", value: 30, total: 100).padding().accentColor(.green)
                    Text("7")
                }.padding()
                List{
                    // TODO PunkteEinloesenView
                    NavigationLink(destination: BenefitsInfoView()){
                        Text("Punkte einlösen")
                    }
                    NavigationLink(destination: BenefitsInfoView()){
                        Text("MVGreen Information")
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
