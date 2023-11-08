//
//  Function.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/08.
//

import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        
        VStack {
            Text("Input number is \(inputNumber)")
            
            Button {
                inputNumber = plusFive(with: inputNumber)
            } label: {
                Text("+5")
            }

        }
    }
    
    func plusFive(with input: Int) -> Int {
        return input + 5
    }
    
}

struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
