//
//  TimelineView.swift
//  MVAbfahrt
//
//  Created by Vio on 15.01.24.
//

import SwiftUI

struct TimelineView: View {
    let events: [(date: Date, title: String)]
    let lineColor: Color
    let pointColor: Color
    
    var body: some View {
        VStack {
            ForEach(events, id: \.date) { event in
                VStack {
                    Text(event.title)
                        .font(.headline)
                    HStack {
                        Text(event.date, style: .date)
                            .font(.caption)
                        Text(event.date, style: .time)
                            .font(.caption2)
                    }
                }
                Circle()
                    .fill(pointColor)
                    .frame(width: 10, height: 10)
                Spacer()
                Rectangle()
                    .fill(lineColor)
                    .frame(width: 2, height: 30)
                Spacer()
            }
        }
    }
}


