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
            VStack {
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
                Text("1.")
                    .fontWeight(.semibold)
                    .font(.title2)
                HStack {
                    Circle()
                        .foregroundStyle(.red)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.green)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.green)
                        .frame(width: 15,height: 25)
                }
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
            
            VStack {
                HStack {
                    Image(systemName: "circle.fill")
                                  .resizable()
                                  .scaledToFit()
                                  .frame(width: 50, height: 50)
                                  .clipShape(Circle())
                                  .foregroundColor(.red)
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                   
                }
                Text("2.")
                    .fontWeight(.semibold)
                    .font(.title2)
                HStack {
                    Circle()
                        .foregroundStyle(.red)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.gray)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.green)
                        .frame(width: 15,height: 25)
                    Circle()
                        .foregroundStyle(.green)
                        .frame(width: 15,height: 25)
                }
            }
        
        }.padding(.horizontal)
    }
}

#Preview {
    LiveScoreView()
}
