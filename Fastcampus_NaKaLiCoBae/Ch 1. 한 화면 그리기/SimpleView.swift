//
//  SimpleView.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 12/11/23.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("헤드라인 입니다")
                .font(.headline)
                .bold()
            
            Text("서브헤드라인 입니다")
                .font(.subheadline)
            
            Text("바디 입니다")
                .font(.body)
            
            Button(action: {
                
            }, label: {
                Text("Click Me")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
                    .bold()
            })
            
        }
    }
}

#Preview {
    SimpleView()
}
