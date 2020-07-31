//
//  ScalingScrollView.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 31.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct ScalingScrollView: View {
    var body: some View {
        GeometryReader { mainView in
            ScrollView {
                VStack(spacing: 15) {
                    //sets name as id
                    ForEach(albums, id: \.album_name) { album in
                        GeometryReader { item in
                            CouponsDiscountItem(album: album)
                                //scaling effect from the bottom
                                .scaleEffect(self.scaleValue(mainFrame: mainView.frame(in: .global).minY, minY: item.frame(in: .global).minY), anchor: .bottom)
                            //adding opacity effect
                                .opacity(Double(self.scaleValue(mainFrame: mainView.frame(in: .global).minY, minY: item.frame(in: .global).minY)))
                        }
                        //default frame height
                            //card height is 100
                        .frame(height: 100)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 25)
            }
        }
    }
    
    //calculation for scaling effect
    func scaleValue(mainFrame: CGFloat, minY: CGFloat) -> CGFloat {
        //adds animation
        withAnimation(.easeOut) {
            //reduce top padding
            let scale = (minY - 25) / mainFrame
            
            if scale > 1 {
                return 1
            } else {
                return scale
            }
        }
    }
}

struct ScalingScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScalingScrollView()
            .environment(\.colorScheme, .dark)
    }
}
