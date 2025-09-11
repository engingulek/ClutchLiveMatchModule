//
//  viewBuilders.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI
import Foundation
import Kingfisher
//MARK: Match Result
enum MatchResult {
    case win
    case lose
    case draw
    
    var color: Color {
        switch self {
        case .win:
                .green
        case .lose:
                .red
        case .draw:
                .gray
        }
    }
}

@ViewBuilder
func matchResultView(for result: MatchResult) -> some View {
    Circle()
        .foregroundStyle(result.color)
        .frame(width: 15,height: 25)
}

//MARK: Team Emblem

enum TeamEmblem {
    case big
    case mid
    case min
    
    var image : (CGFloat,CGFloat){
        switch self {
        case .big:
            (50,50)
        case .mid:
            (30,30)
        case .min:
            (15,15)
        }
    }
}


@MainActor @ViewBuilder
func kfImageView(for teamEmblem:TeamEmblem,url:String) -> some View {
    KFImage.url(URL(string: url))
        
        .fade(duration: 0.25)
        .cacheMemoryOnly()
        .resizable()
        .scaledToFit()
      
        .frame(width: teamEmblem.image.0,height: teamEmblem.image.1)
      
        .clipShape(.circle)
            //  .placeholder(placeholderImage)
           //   .setProcessor(processor)
            /*  .loadDiskFileSynchronously()
              .cacheMemoryOnly()
              .fade(duration: 0.25)
            //  .lowDataModeSource(.network(lowResolutionURL))
              .onProgress { receivedSize, totalSize in  }
              .onSuccess { result in  }
              .onFailure { error in }*/
}


@ViewBuilder
func systemImageView(for teamEmblem:TeamEmblem,systemImage:String,color:Color) -> some View {
    Image(systemName: systemImage)
        .scaledToFit()
        .frame(width: teamEmblem.image.0,height: teamEmblem.image.1)
        .foregroundStyle(color)
        .clipShape(.circle)
}


@ViewBuilder
func resourceImageView(for teamEmblem:TeamEmblem,image:  SwiftUI.ImageResource,color:Color) -> some View {
    Image(image)
        .scaledToFit()
        .frame(width: teamEmblem.image.0,height: teamEmblem.image.1)
        .foregroundStyle(color)
        .clipShape(.circle)
}



//MARK: Tab View
@ViewBuilder
func contentView(for tab: Tabs,
                 viewModel:any LiveMatchViewModelProtocol) -> some View {
    switch tab {
    case .timeline:
        ScrollView {
            VStack {
                GoalView(textState: viewModel.textState)
                Substitution(textState: viewModel.textState)
                CardInfo(textState: viewModel.textState)
            }
        }
    case .state:
        StateView()
    }
}



