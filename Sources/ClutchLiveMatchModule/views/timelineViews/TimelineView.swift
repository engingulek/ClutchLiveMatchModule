//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        ScrollView {
            VStack {
                GoalView()
                Substitution()
                CardInfo()
                
            }
            
        }
    }
}

#Preview {
    TimelineView()
}
