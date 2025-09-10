//
//  SwiftUIView.swift
//  ClutchLiveMatchModule
//
//  Created by Engin Gülek on 10.09.2025.
//

import SwiftUI

struct Substitution: View {
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
            Text("Substitution")
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
    
    private var inPlayer : some View {
        HStack {
            Text("IN")
                .padding(10)
                .fontWeight(.medium)
                .font(.footnote)
                .background(Color.green.opacity(0.2))
                .foregroundColor(.green)
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
    }
    
    private var outPlayer : some View {
        HStack {
            Text("OUT")
                .padding(10)
                .font(.footnote)
                .fontWeight(.medium)
                .background(Color.red.opacity(0.2))
                .foregroundColor(.red)
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
    }
}

#Preview {
    Substitution()
}
