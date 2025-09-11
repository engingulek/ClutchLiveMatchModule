//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI



struct LiveMatchView: View {
    @State private var selectedTab: Tabs = .timeline
    @Namespace private var animation
     
    
    var body: some View {
        VStack {
            LiveScoreView()
            TabView(selectedTab: $selectedTab)
            VStack {
                
                
                if selectedTab == .timeline {
                    
                    ScrollView {
                        VStack {
                            GoalView()
                            Substitution()
                            CardInfo()
                            
                        }
                        
                    }
                }else if selectedTab == .state{
                    StateView()
                
                }else{
                    
                }
                
               
             }.background(Color.gray.opacity(0.1))

           
           
            
          
        }
    }
}

#Preview {
    LiveMatchView()
}



/* */
