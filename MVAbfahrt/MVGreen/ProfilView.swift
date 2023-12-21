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
                Text("Vinzenz Prakoso") // TODO: Image Pen
                Divider()
                VStack{
                    HStack
                    {
                        Text("MVGreen")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.green)
                        Spacer()
                    }
                    HStack{
                        Text("6")
                        ProgressView("404/1000 Punkte", value: 404, total: 1000).padding().accentColor(.green)
                        Text("7")
                    }
                }.padding()
                List{
                    NavigationLink(destination: BenefitsInfoView()){
                        Text("Punkte einlösen")
                    }
                    /*NavigationLink(destination: BenefitsInfoView()){
                        Text("MVGreen Information")
                    }*/
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
