//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI
import ClutchCoreKit
struct CardInfo: View {
    let textState : TextState
    var body: some View {
        HStack {
            TextType(text: "mn'", color: .gray, fontType: .titleTwoBold)
            
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
                .frame(width: 30,height: 30)
             
            TextType(text: textState.yellowCard, fontType: .calloutSB)
         
            Spacer()
            kfImageView(for: .mid, url: "https://upload.wikimedia.org/wikipedia/tr/archive/2/2e/20241203235700%21Liverpool_FC_logo_2024.png")
            
            
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
    
    private var playerInfo : some View {
        VStack {
            HStack {
                VStack(alignment:.leading) {
                    TextType(text: "Player Name", fontType: .calloutSB)
                   
                    Text("AMF #8")
                       
                }
                Spacer()
                kfImageView(for: .mid, url: "https://img.a.transfermarkt.technology/portrait/big/148455-1727337594.jpg?lm=1")
            }
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
}

