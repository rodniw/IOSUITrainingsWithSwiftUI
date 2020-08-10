//
//  CouponsDiscountItem.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 31.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct CouponsDiscountItem: View {
    @Environment(\.colorScheme) var colorScheme
    var album : Album
    
    var body: some View {
        HStack {
            
            HStack {
                Text("15%")
                    .fontWeight(.bold)
                    .frame(width: 50, height: 50)
                //.stroke(Color.red)
                }
            //.padding(.leading, 20)
            .padding(15)
            .overlay(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 3, dash: [8]))
            )
            .frame(width: 100, height: 120)
            .cornerRadius(15)
            
            Spacer()
            
            VStack() {
                Spacer()
                
                Text(album.album_name)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    //withAnimation {
                    //    //self.showDetail.toggle()
                    //}
                }) {
                Text("ПОДРОБНЕЕ")
                    .font(.system(size: 15))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .padding(.vertical, 6)
                    .padding(.horizontal, 20)
                    .background(Color("Color").opacity(1))
                    .cornerRadius(8)
                }
                
                Spacer()
            }
            .frame(
                minWidth: 0,
                maxWidth: 200)
            .padding(.leading, 10)
            
            Spacer()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            maxHeight: 120)
        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
        .background(colorScheme == .dark ? Color("bottom") : Color.white)
        .background(Color.white.shadow(color: Color.black.opacity(0.12), radius: 5, x: 0, y: 4))
        .cornerRadius(8)
    }
}

struct CouponsDiscountItem_Previews: PreviewProvider {
    static var previews: some View {
        CouponsDiscountItem(album: albums[0])
            .environment(\.colorScheme, .dark)
    }
}
