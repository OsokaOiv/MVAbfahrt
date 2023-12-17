//
//  BenefitsInfoView.swift
//  MVAbfahrt
//
//  Created by Vio on 17.12.23.
//

import SwiftUI

struct BenefitsInfoView: View {
    var body: some View {
        Text("Fahrt über 3 Stationen").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        Text("->mit QR Code ein/auschecken").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        List {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
        }
    }
}

#Preview {
    BenefitsInfoView()
}
