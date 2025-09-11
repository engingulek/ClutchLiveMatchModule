//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 11.09.2025.
//

import SwiftUI

enum Tabs:String,CaseIterable {
    case timeline = "Timeline"
    case state = "State"
    case standing = "Standing"
}


struct TabView: View {
    @Binding  var selectedTab: Tabs
    @Namespace private var animation
    var body: some View {
        HStack(spacing: 16) {
            ForEach(Tabs.allCases, id: \.self) { tab in
                Text(tab.rawValue)
                          .fontWeight(.semibold)
                          .foregroundColor(selectedTab == tab ? .white : .gray)
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
                                  selectedTab = tab
                              }
                          }
                  }
              }
        .padding(.horizontal)
    }
}

