//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI


struct MatchOverviewView: View {
    let leftTeamName: String
    let rightTeamName: String
    let leftColor: Color
    let rightColor: Color
    let stats: MatchStats
    
    var body: some View {
        VStack(spacing: 14) {
            // List of stats
            VStack(spacing: 12) {
                StatComparisonBarView(label: "Shots", leftValue: stats.shotsLeft, rightValue: stats.shotsRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
                StatComparisonBarView(label: "Passes", leftValue: stats.passesLeft, rightValue: stats.passesRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
                StatComparisonBarView(label: "Corners", leftValue: stats.cornersLeft, rightValue: stats.cornersRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
                StatComparisonBarView(label: "Yellow Cards", leftValue: stats.yellowLeft, rightValue: stats.yellowRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
                StatComparisonBarView(label: "Fouls", leftValue: stats.foulsLeft, rightValue: stats.foulsRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
                StatComparisonBarView(label: "Red Cards", leftValue: stats.redLeft, rightValue: stats.redRight, leftTeamColor: leftColor, rightTeamColor: rightColor)
            }
            
            Spacer(minLength: 8)
        }
        
    }
}


