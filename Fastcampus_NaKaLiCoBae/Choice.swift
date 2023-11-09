//
//  Choice.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/09.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .south
    var member: Member = .leeo
    var menu: Menu = .steak(3)

    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다")
    }
}

enum Menu {
    case pasta
    case pizza
    case steak(Int)
}

enum Member: String {
    case leeo = "리이오"
    case tom = "톰"
    case bami = "바미"
    case koko = "코코"
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

struct Choice_Previews: PreviewProvider {
    static var previews: some View {
        Choice()
    }
}
