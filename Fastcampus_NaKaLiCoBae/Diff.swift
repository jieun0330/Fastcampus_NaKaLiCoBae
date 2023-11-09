//
//  Diff.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/08.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "리어카", owner: "리이오")
    @ObservedObject var myKar = Kar(name: "리어카2", owner: "리이오2")
        
    var body: some View {
        
        VStack {
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")
            Button {
                let broCar = myKar
                broCar.name = "동생차"
                broCar.owner = "동생"
                
                myKar.sayHi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct Car {
    var name: String
    var owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
}

class Kar: ObservableObject {
    @Published var name: String
    var owner: String
    
    func sayHi() {
        print("hi \(owner)2")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

struct Diff_Previews: PreviewProvider {
    static var previews: some View {
        Diff()
    }
}
