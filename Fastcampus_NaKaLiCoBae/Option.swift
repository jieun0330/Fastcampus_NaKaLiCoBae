//
//  Option.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 2023/11/10.
//

import SwiftUI

struct Option: View {
    
    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry", petName: "cookie")
//    var user1 = People(name: <#T##String#>)
    
    var body: some View {
        VStack {
            
//            if let leeo = leeo {
//                if let mbti = leeo.mbti {
//                    if let = mbti.name {
//
//                    }
//                }
//            }
            
            if let leeoMbtiName = leeo?.mbti?.name {
                Text(leeoMbtiName)
            } else {
                Text("NO MBTI NAME")
            }
            
            
//            if let petName = leeo.petName {
//                Text("이름은 \(leeo.name), 애완동물 이름은 \(petName)")
//            } else {
//                Text("이름은 \(leeo.name), 애완동물 이름은 없어요")
//            }
            
            if let petName = bami.petName {
                Text("이름은 \(bami.name), 애완동물 이름은 \(petName)")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name), 애완동물 이름은 \(petName)")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}

struct Option_Previews: PreviewProvider {
    static var previews: some View {
        Option()
    }
}
