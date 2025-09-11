//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI
import ClutchCoreKit
struct GoalView: View {
    let textState : TextState
    var body: some View {
        HStack {
            
            TextType(text: "mn'", color: .gray, fontType: .titleTwoBold)
      
            VStack {
                goalScore
                goalInfo
            }  .background(Color.white)
                .cornerRadius(20)
            
            
        }.padding()
    }
    
    private var goalScore : some View {
            VStack {
                HStack {
                    systemImageView(for: .mid, systemImage: "soccerball.inverse", color: .white)
                    
                    TextType(text: textState.gol, color: .white,fontType: .calloutSB)
                   
                    Spacer()
                    
                    HStack {
                        HStack {
                            kfImageView(for: .mid, url: "https://upload.wikimedia.org/wikipedia/tr/archive/2/2e/20241203235700%21Liverpool_FC_logo_2024.png")
                              
                            TextType(text: "4", color: .white,fontType: .titleTwoSB)
                           
                        }
    
                        Text("-")
                            .foregroundStyle(.white)
                        
                        HStack {
                            TextType(text: "2", color: .white,fontType: .titleTwoSB)
                            kfImageView(for: .mid, url: "https://upload.wikimedia.org/wikipedia/tr/archive/2/2e/20241203235700%21Liverpool_FC_logo_2024.png")
                              
                           
                        }
                    }
                }.padding()
            }
            .background(Color.indigo)
        
    }
    
    
    private var goalInfo : some View {
        VStack {
            HStack {
                VStack(alignment:.leading) {
                    TextType(text: "Player Name", fontType: .calloutSB)
                   
                    Text("AMF #8")
                }
                Spacer()
                
                kfImageView(for: .mid, url: "https://img.a.transfermarkt.technology/portrait/big/148455-1727337594.jpg?lm=1")
                
            }.padding(.horizontal)
                .padding(.vertical,5)
            
            Divider().padding(.horizontal)
            
            HStack{
                Text("Goal Assist")
                TextType(text: "Player Name", fontType: .calloutSB)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical,5)
        }
    }
}

