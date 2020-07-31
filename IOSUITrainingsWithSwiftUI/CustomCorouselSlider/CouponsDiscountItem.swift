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
            Image(album.album_cover)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            
            VStack() {
                Text(album.album_name)
                    .fontWeight(.bold)
                
                Text(album.album_author)
            }
            .foregroundColor(colorScheme == .dark ? Color("Color1") : Color.black)
            .padding(.leading, 10)
            
            Spacer(minLength: 0)
        }
        .background(Color.white.shadow(color: Color.black.opacity(0.12), radius: 5, x: 0, y: 4))
        .cornerRadius(15)
    }
}

struct CouponsDiscountItem_Previews: PreviewProvider {
    static var previews: some View {
        CouponsDiscountItem(album: albums[0])
            .environment(\.colorScheme, .dark)
    }
}
