//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI
import ClutchCoreKit


struct LiveMatchTabView: View {
    let  selectedTab: Tabs
    let onTabSelected: (Tabs) -> Void
    
    @Namespace private var animation
    
    var body: some View {
        HStack(spacing: 16) {
            ForEach(Tabs.allCases, id: \.self) { tab in
                TextType(text: tab.title, color: selectedTab == tab ? .white : .gray, fontType: .calloutSB)
                          .padding(.vertical, 8)
                          .padding(.horizontal, 16)
                          .background(
                              ZStack {
                                  if selectedTab == tab {
                                      RoundedRectangle(cornerRadius: 10)
                                          .fill(Color.red)
                                          .matchedGeometryEffect(id: "TAB", in: animation)
                                  } else {
                                      RoundedRectangle(cornerRadius: 10)
                                          .fill(Color.white)
                                  }
                              }
                          )
                          .onTapGesture {
                              withAnimation(.spring()) {
                                 onTabSelected(tab)
                              }
                          }
                  }
              }
        .padding(.horizontal)
    }
}

