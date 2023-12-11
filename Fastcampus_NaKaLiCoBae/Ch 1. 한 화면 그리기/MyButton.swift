//
//  MyButton.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 12/11/23.
//

import SwiftUI

struct MyButton: View {
    
    
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(buttonTitle)
                .foregroundStyle(.white)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    MyButton(buttonTitle: "Button 4", buttonColor: .brown)
}
