//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI

struct StateView: View {
    @State private var exampleStats = MatchStats(
        shotsLeft: 8,
        shotsRight: 12,
        passesLeft: 410,
        passesRight: 365,
        cornersLeft: 3,
        cornersRight: 5,
        yellowLeft: 2,
        yellowRight: 3,
        foulsLeft: 9,
        foulsRight: 11,
        redLeft: 0,
        redRight: 1
    )
    
    var body: some View {
        ScrollView {
            MatchOverviewView(
                leftTeamName: "Anatolia FC",
                rightTeamName: "Bosphorus United",
                leftColor: Color(red: 0.11, green: 0.53, blue: 0.96),
                rightColor: Color(red: 0.96, green: 0.33, blue: 0.35),
                stats: exampleStats
            )
        
          
            .padding()
        }
    }
}

#Preview {
    StateView()
}
