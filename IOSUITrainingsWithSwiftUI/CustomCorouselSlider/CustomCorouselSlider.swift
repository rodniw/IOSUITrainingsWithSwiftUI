//
//  CustomCorouselSlider.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 29.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct CustomCorouselSlider: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Button(action: {}) {
                        Image("menu-1")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("search")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                HStack {
                    Text("Trending")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image("dots")
                           .renderingMode(.template)
                           .foregroundColor(.white)
                            .rotationEffect(.init(degrees: 90))
                    }
                }
                
                Spacer()
            }
        }
        .background(
            LinearGradient(gradient: .init(colors: [Color("bottom"),Color("top")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct CustomCorouselSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomCorouselSlider()
    }
}
