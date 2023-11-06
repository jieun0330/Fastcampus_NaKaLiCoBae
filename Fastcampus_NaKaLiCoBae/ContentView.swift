//
//  ContentView.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/06.
//

import SwiftUI

struct ContentView: View {
    
    var name: String = "존"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(name)님 안녕하세요!")
            Text("\(name)님의 포인트는 343점 입니다.")
            Text("\(name)님 안녕히가세요")
            Text(name)
//            Text("2"+"2"-"2")
//            Int(2+2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
