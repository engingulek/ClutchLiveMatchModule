//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI
import ClutchCoreKit
struct LiveScoreView: View {
    var body: some View {
        HStack {
            VStack {
                HStack {
                    kfImageView(for: .big, url: "https://upload.wikimedia.org/wikipedia/tr/archive/2/2e/20241203235700%21Liverpool_FC_logo_2024.png")
                    
                    TextType(text: "4" ,fontType: .largeTitleSB)
                }
                
                TextType(text: "1.", fontType: .titleTwoSB)
                
                HStack {
                    matchResultView(for: .win)
                    matchResultView(for: .draw)
                    matchResultView(for: .lose)
                    matchResultView(for: .lose)
                    matchResultView(for: .win)
                }
            }
            
            Spacer()
            
            Text("45'")
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color.green.opacity(0.2))
                .foregroundColor(.green)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(Color.green, lineWidth: 2)
                )
            
            Spacer()
            
            VStack {
                
                HStack {
                    TextType(text: "2", color: .gray,fontType: .largeTitleSB)
                    kfImageView(for: .big, url: "https://upload.wikimedia.org/wikipedia/tr/f/f6/Manchester_City.png")
                }
                
                TextType(text: "2.", fontType: .titleTwoSB)
                
                HStack {
                    matchResultView(for: .win)
                    matchResultView(for: .draw)
                    matchResultView(for: .lose)
                    matchResultView(for: .lose)
                    matchResultView(for: .win)
                    
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    LiveScoreView()
}
