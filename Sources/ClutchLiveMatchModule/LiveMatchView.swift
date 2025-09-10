//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI

struct LiveMatchView: View {
    var body: some View {
        VStack {
            LiveScoreView()
            
            VStack {
                ScrollView {
                    VStack {
                        GoalView()
                        Substitution()
                        CardInfo()
                        
                      
                       
                    }
                    
                }
            }.background(Color.gray.opacity(0.1))
        }
    }
}

#Preview {
    LiveMatchView()
}
