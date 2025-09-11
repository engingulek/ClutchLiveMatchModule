//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI

struct CardInfo: View {
    var body: some View {
        HStack {
            Text("mn'")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
            VStack {
                title
                Divider()
                playerInfo
            }  .background(Color.white)
                .cornerRadius(20)
        }.padding()
    }
    
    private var title : some View {
        HStack{
            Image(.yellowCard)
                .resizable()
                .scaledToFit()
                .frame(width:30,height: 30)
            Text("Yellow Card")
                .font(.callout)
                .fontWeight(.semibold)
            Spacer()
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .foregroundColor(.red)
            
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
    
    private var playerInfo : some View {
        VStack {
            HStack {
                VStack(alignment:.leading) {
                    Text("Player Name")
                        .font(.callout)
                        .fontWeight(.semibold)
                    Text("AMF #8")
                        .font(.callout)
                }
                Spacer()
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .foregroundColor(.red)
            }
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
}

#Preview {
    CardInfo()
}
