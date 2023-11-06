//
//  VariableType.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/06.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Leeo"
    var age: Int = 20
    var height: Float = 183.6
    var weight: Double = 70.6
    var havePet: Bool = false
    
    var body: some View {
        
        VStack {
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

struct VariableType_Previews: PreviewProvider {
    static var previews: some View {
        VariableType()
    }
}
