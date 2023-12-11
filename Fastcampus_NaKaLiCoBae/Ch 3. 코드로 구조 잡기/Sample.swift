//
//  Sample.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/10.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(direction: .north,
                    food: "파스타맛집",
                    image: Image(systemName: "carrot")),
        Destination(direction: .east,
                    food: nil,
                    image: Image(systemName: "sunrise")),
        Destination(direction: .west,
                    food: nil,
                    image: Image(systemName: "balloon")),
        Destination(direction: .south,
                    food: "순대맛집",
                    image: Image(systemName: "cursor.rays"))
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            if let destination = selectedDestination {
                Text(destination.direction.rawValue)
                if let food = destination.food {
                    Text(food)
                }
            }
            
            Button(action: {
                selectedDestination = data.randomElement()
            }, label: {
                Text("돌려요!")
            })
        }
    }
}

struct Destination {
    let direction: Direction
    let food: String?
    let image: Image
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

struct Sample_Previews: PreviewProvider {
    static var previews: some View {
        Sample()
    }
}
