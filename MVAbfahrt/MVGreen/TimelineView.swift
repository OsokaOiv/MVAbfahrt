//
//  TimelineView.swift
//  MVAbfahrt
//
//  Created by Vio on 15.01.24.
//

import SwiftUI

struct TimelineView: View {
    let events: [(date: Date, title: String, points: Int)]
    let lineColor: Color
    let pointColor: Color
    
    var body: some View {
        ScrollView{
            VStack {
                ForEach(events, id: \.date) { event in
                    VStack {
                        Text(event.title)
                            .font(.caption)
                        HStack {
                            Text(event.date, style: .date)
                                .font(.caption2)
                            Text(event.date, style: .time)
                                .font(.caption2)
                        }
                        if (event.points > 0)
                        {
                            Text("Verdiente Punkte: " + event.points.formatted())
                                .font(.headline)
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
                Circle()
                    .fill(pointColor)
                    .frame(width: 10, height: 10)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Timeline")
            .frame(maxWidth: .infinity)
        }
    }
}


