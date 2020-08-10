//
//  CustomCorouselSlider.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 29.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct CustomCorouselSlider: View {
    
    @State var index = 0
    
    var body: some View {
        VStack {
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
                    
                    Button(action: {}) {
                        Image("dots")
                           .renderingMode(.template)
                           .foregroundColor(.white)
                            .rotationEffect(.init(degrees: 90))
                    }
                }
                .padding(.horizontal)
                
                HStack {
                    Button(action: {
                        //withAnimation {
                        //    //self.showDetail.toggle()
                        //}
                    }) {
                    Text("Купоны")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical,6)
                        .padding(.horizontal,20)
                        .background(Color("Color").opacity(index == 0 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            
                            self.index = 0
                        }
                    }
                    
                    Button(action: {
                        //withAnimation {
                        //    //self.showDetail.toggle()
                        //}
                    }) {
                    Text("Скидки")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical,6)
                        .padding(.horizontal,20)
                        .background(Color("Color").opacity(index == 1 ? 1 : 0))
                        .clipShape(Capsule())
                        .onTapGesture {
                            
                            self.index = 1
                        }
                    }
                    
                        Button(action: {
                            //withAnimation {
                            //    //self.showDetail.toggle()
                            //}
                        }) {
                    Text("Магазины")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical,6)
                    .padding(.horizontal,20)
                    .background(Color("Color").opacity(index == 2 ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        
                        self.index = 2
                    }
                    }
                    
                    //Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 0)
            }
            
            ScalingScrollView()
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
