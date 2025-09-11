//
//  LiveMatchPresenter.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//
import Foundation

import ClutchCoreKit
enum Tabs:CaseIterable {
    
    case timeline
    case state
    
    var title: String {
          switch self {
          case .timeline:
              return LocalizableTheme.timeline.localized
          case .state:
              return LocalizableTheme.state.localized
          }
      }

}

protocol LiveMatchViewModelProtocol : ObservableObject {
    var selectedTab : Tabs {get}
    var textState : TextState {get}
    func onTappedTab(tab:Tabs)
}


class LiveMatchViewModel: LiveMatchViewModelProtocol {
    @Published var selectedTab: Tabs = .timeline
    let textState: TextState = TextState()
    
    
    func onTappedTab(tab:Tabs) {
        selectedTab = tab
        print("\(selectedTab)")
    }
}
