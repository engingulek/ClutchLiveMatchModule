//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI



struct LiveMatchView<VM:LiveMatchViewModelProtocol>: View {
    @StateObject var viewModel : VM
    
    @Namespace private var animation
    var body: some View {
        VStack {
            LiveScoreView()
            LiveMatchTabView(
                selectedTab: viewModel.selectedTab,
                onTabSelected: viewModel.onTappedTab
            )
            
            VStack {
               
                contentView(for: viewModel.selectedTab, viewModel: viewModel)
                
             }.background(Color.gray.opacity(0.1))
        }
    }
}

#Preview {
    LiveMatchView(viewModel: LiveMatchViewModel())
}
