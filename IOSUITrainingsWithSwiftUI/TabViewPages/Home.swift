//
//  Home.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 27.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var index = 0
    
    var body: some View {
        VStack {
            //this requires ios 14 and higher
            TabView(selection: $index) {
                Color.red
                
                Color.blue
                
                Color.orange
                
                Color.yellow
            }
            //.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
