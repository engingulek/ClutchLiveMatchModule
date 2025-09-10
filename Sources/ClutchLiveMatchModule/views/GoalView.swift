//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        HStack {
            Text("mn'")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
            
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
                    Image(systemName: "soccerball.inverse")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    
                    Text("GOOOLL!!!")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Spacer()
                    
                    HStack {
                        HStack {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                            Text("4")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                        }
    
                        Text("-")
                        
                        HStack {
                            Text("2")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                            Image(systemName: "circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                    }
                }.padding()
            }
            .background(Color.red)
        
    }
    
    
    private var goalInfo : some View {
        VStack {
            HStack {
                VStack(alignment:.leading) {
                    Text("Player Name")
                        .fontWeight(.semibold)
                    Text("AMF #8")
                }
                Spacer()
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .foregroundColor(.red)
            }.padding(.horizontal)
                .padding(.vertical,5)
            
            Divider().padding(.horizontal)
            
            HStack{
                Text("Goal Assist")
                Text("Player Name")
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical,5)
        }
    }
}

#Preview {
    GoalView()
}
