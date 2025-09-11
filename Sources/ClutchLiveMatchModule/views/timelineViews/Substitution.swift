//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI
import ClutchCoreKit
struct Substitution: View {
    let textState : TextState
    var body: some View {
        HStack {
            Text("mn'")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
            VStack {
                title
                Divider()
                VStack {
                    inPlayer
                    Divider()
                    outPlayer
                }.padding(.horizontal)
                    .padding(.vertical,5)
            }  .background(Color.white)
                .cornerRadius(20)
        }.padding()
    }
    
    private var title: some View {
        HStack{
            Image(.inout)
                .resizable()
                .scaledToFit()
                .frame(width:30,height: 30)
            TextType(text: textState.substitution, fontType: .calloutSB)
           
            Spacer()
            kfImageView(for: .mid, url: "https://upload.wikimedia.org/wikipedia/tr/archive/2/2e/20241203235700%21Liverpool_FC_logo_2024.png")
          
            
        }.padding(.horizontal)
            .padding(.vertical,5)
    }
    
    private var inPlayer : some View {
        HStack {
            Text(textState.in)
                .padding(10)
                .background(Color.green.opacity(0.2))
                .foregroundColor(.green)
            
            VStack(alignment:.leading) {
                
                TextType(text: "Player Name", fontType: .calloutSB)
                Text("AMF #8")
                    .font(.callout)
            }
            Spacer()
            kfImageView(for: .mid, url: "https://img.a.transfermarkt.technology/portrait/big/148455-1727337594.jpg?lm=1")
        }
    }
    
    private var outPlayer : some View {
        HStack {
            Text(textState.out)
                .padding(10)
                .font(.footnote)
                .fontWeight(.medium)
                .background(Color.red.opacity(0.2))
                .foregroundColor(.red)
            VStack(alignment:.leading) {
                TextType(text: "Player Name", fontType: .calloutSB)
                Text("AMF #8")
                    .font(.callout)
            }
            Spacer()
            kfImageView(for: .mid, url: "https://img.a.transfermarkt.technology/portrait/big/148455-1727337594.jpg?lm=1")
        }
    }
}


