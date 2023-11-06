//
//  MyCollection.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/06.
//

import SwiftUI

struct MyCollection: View {
    
    var foods: [String] = ["eggs", "bananas", "beans"]
    var jazzs: Set<String> = ["bibidudu", "labdap", "dididudu"]
    var hiphop: Set<String> = ["labdap", "rap", "wow"]
    var koEngDict: [String:String] = ["사과":"Apple", "바나나":"Banana"]
    
    var body: some View {
        VStack {
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
        }
    }
}

struct MyCollection_Previews: PreviewProvider {
    static var previews: some View {
        MyCollection()
    }
}
