//
//  Elevator.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/08.
//

import SwiftUI

struct Elevator: View {
    
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수: \(myElevator.level)")
            
            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }
                
                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
}

struct ElevatorStruct {
    // 층 수를 표시해주는 디스플레이
    var level: Int = 1
    
    // 아래로 내려갈 수 있어야 함
    mutating func goDown() {
        level = level - 1
    }
    
    // 위로 올라갈 수 있어야 함
    mutating func goUp() {
        level = level + 1
    }
    
}


struct Elevator_Previews: PreviewProvider {
    static var previews: some View {
        Elevator()
    }
}
