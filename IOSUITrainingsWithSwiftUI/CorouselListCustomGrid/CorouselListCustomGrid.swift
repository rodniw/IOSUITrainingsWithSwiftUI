//
//  CorouselListCustomGrid.swift
//  IOSUITrainingsWithSwiftUI
//
//  Created by Rodion Prosvirnin on 29.07.2020.
//  Copyright © 2020 Rodion Prosvirnin. All rights reserved.
//

import SwiftUI

struct CorouselListCustomGrid: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("impossible right now.. waiting for the 14th ios.")
            //LazyVStack {
            //
            //}
        }
    }
}

struct CorouselListCustomGrid_Previews: PreviewProvider {
    static var previews: some View {
        CorouselListCustomGrid()
    }
}

//data for the project

struct Game : Identifiable {
    
    var id : Int
    var name : String
    var image : String
    var rating : Int
}

var data = [

    Game(id: 0, name: "Resident Evil 3", image: "g2", rating: 3),
    Game(id: 1, name: "GTA 5", image: "g3", rating: 5),
    Game(id: 2, name: "Assaisan Creed Odesey", image: "g4", rating: 3),
    Game(id: 3, name: "Resident Evil 7", image: "g5", rating: 2),
    Game(id: 4, name: "Watch Dogs 2", image: "g6", rating: 1),
    Game(id: 5, name: "The Evil Within 2", image: "g7", rating: 2),
    Game(id: 6, name: "Tomb Raider 2014", image: "g8", rating: 4),
    Game(id: 7, name: "Shadow Of The Tomb Raider", image: "g1", rating: 4),

]
