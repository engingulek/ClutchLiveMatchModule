//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI

struct LiveScoreView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "circle.fill")
                              .resizable()
                              .scaledToFit()
                              .frame(width: 50, height: 50)
                              .clipShape(Circle())
                              .foregroundColor(.red)
                Text("4")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            Spacer()
            
            Text("45'")
                           .padding(.vertical, 5)
                           .padding(.horizontal, 10)
                           .fontWeight(.medium)
                           .background(Color.green.opacity(0.2))
                           .foregroundColor(.green)
                           .clipShape(Capsule())
                           .overlay(
                               Capsule()
                                   .stroke(Color.green, lineWidth: 2)
                           )
            Spacer()
            
            HStack {
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                Image(systemName: "circle.fill")
                              .resizable()
                              .scaledToFit()
                              .frame(width: 50, height: 50)
                              .clipShape(Circle())
                              .foregroundColor(.red)
               
            }
        
        }.padding(.horizontal)
    }
}

#Preview {
    LiveScoreView()
}
