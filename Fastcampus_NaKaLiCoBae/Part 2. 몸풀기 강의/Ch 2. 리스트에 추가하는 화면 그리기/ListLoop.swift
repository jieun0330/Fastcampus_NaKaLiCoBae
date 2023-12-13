//
//  ListLoop.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 12/13/23.
//

import SwiftUI

// hashable: 동명이인을 보여주기 위해
struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}


struct ListLoop: View {
    
    var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 3000),
        Fruit(name: "Cherry", matchFruitName: "Double Kiwi", price: 4000),
        Fruit(name: "Double Kiwi", matchFruitName: "Elder berry", price: 2400),
        Fruit(name: "Elder berry", matchFruitName: "Double Kiwi", price: 8000)
    ]
    
//    var fruits = ["Apple", "Banana", "Cherry", "Double Kiwi", "Elder berry"]
//    var matchFruits = ["Banana", "Banana", "Double Kiwi", "Elder berry", "Double Kiwi"]
//    
//    var price = ["1000", "3000", "4000", "2400", "8000"]
//    var count = 0
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("name: \(fruit.name)")
                        Text("matchFruit: \(fruit.matchFruitName)")
                        Text("price:\(fruit.price)")
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
