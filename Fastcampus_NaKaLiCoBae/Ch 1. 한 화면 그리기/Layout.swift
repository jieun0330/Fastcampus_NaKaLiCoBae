//
//  Layout.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 12/11/23.
//

import SwiftUI

struct Layout: View {

    
    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("Text Element 1")
                .font(.headline)
            
            Text("Text Element 2")
                .font(.subheadline)
            
            Text("Text Element 3")
                .font(.body)
            
            HStack {
                
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .cyan)

            }
            
            Button(action: {
                
            }, label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}

#Preview {
    Layout()
}
