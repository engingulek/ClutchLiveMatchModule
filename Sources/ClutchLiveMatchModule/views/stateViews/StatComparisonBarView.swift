//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI

struct StatComparisonBarView: View {
    let label: String
    let leftValue: Int
    let rightValue: Int
    let leftTeamColor: Color
    let rightTeamColor: Color
    
    private var total: Double { max(1.0, Double(leftValue + rightValue)) }
    private var leftFraction: Double { Double(leftValue) / total }
    private var rightFraction: Double { Double(rightValue) / total }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                
                
                 Text("\(leftValue)")
                     .fontWeight(.semibold)
                     .monospacedDigit()
                
                Spacer()
                
                Text(label)
                    .font(.subheadline)
                    .bold()
                Spacer()
                Text("\(rightValue)")
                            .fontWeight(.semibold)
                            .monospacedDigit()

            }
            
            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    // Background track
                    Capsule()
                        .frame(height: 18)
                        .foregroundColor(Color(.systemGray5))
                    
                    // Left team's portion
                    HStack(spacing: 0) {
                        Capsule()
                            .frame(width: max(6, geo.size.width * CGFloat(leftFraction)), height: 18)
                            .foregroundColor(leftTeamColor)
                            .overlay(
                                Capsule().stroke(Color.white.opacity(0.08), lineWidth: 0.5)
                            )
                        Spacer(minLength: 0)
                    }
                    
                    // Right team's portion aligned to trailing
                    HStack(spacing: 0) {
                        Spacer(minLength: 0)
                        Capsule()
                            .frame(width: max(6, geo.size.width * CGFloat(rightFraction)), height: 18)
                            .foregroundColor(rightTeamColor)
                            .overlay(
                                Capsule().stroke(Color.white.opacity(0.08), lineWidth: 0.5)
                            )
                    }
                    
                
                 
                }
            }
            .frame(height: 18)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(label). Left team: \(leftValue). Right team: \(rightValue).")
    }
}


