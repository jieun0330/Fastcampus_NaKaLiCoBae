//
//  Setting.swift
//  Fastcampus_NaKaLiCoBae
//
//  Created by 박지은 on 12/13/23.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}

struct Setting: View {
    
    let data: [[SettingInfo]] = [[SettingInfo(title: "스크린 타임",
                                              systemName: "hourglass",
                                              backgroundColor: .purple)],
                                 [SettingInfo(title: "일반",
                                              systemName: "gear",
                                              backgroundColor: .gray),
                                  SettingInfo(title: "손쉬운 사용",
                                              systemName: "person.crop.circle",
                                              backgroundColor: .blue),
                                  SettingInfo(title: "개인정보 보호 및 보안",
                                              systemName: "hand.raised.fill",
                                              backgroundColor: .blue)],
                                 [SettingInfo(title: "암호",
                                              systemName: "key.fill",
                                              backgroundColor: .gray)],
                                 [SettingInfo(title: "Safari",
                                              systemName: "safari",
                                              backgroundColor: .blue)]
                                 
    
    ]
//
//    let firstSection = [SettingInfo(title: "스크린 타임",
//                                    systemName: "hourglass",
//                                    backgroundColor: .purple)]
//    let secondSection = [SettingInfo(title: "일반",
//                                    systemName: "gear",
//                                    backgroundColor: .gray),
//                        SettingInfo(title: "손쉬운 사용",
//                                    systemName: "person.crop.circle",
//                                    backgroundColor: .blue)]
    
    var body: some View {
        
        NavigationStack {
            List {
                
                ForEach(data, id:\.self) { section in
                    Section {
                        ForEach(section, id:\.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(7)
                                    .foregroundColor(item.foregroundColor)
                                    .background(item.backgroundColor)
                                    .cornerRadius(6)
                            }
                            
                        }
                    }
                }
                
                //                Section {
                //                    Label(
                //                        title: { Text("스크린 타임") },
                //                        icon: { Image(systemName: "hourglass")
                //                                .resizable()
                //                                .scaledToFit()
                //                                .frame(width: 20, height: 20)
                //                                .padding(7)
                //                                .foregroundColor(.white)
                //                                .background(.purple)
                //                                .cornerRadius(6)
                //                        }
                //                    )
                //                }
                
                //                Section {
                //                    Label(
                //                        title: { Text("일반") },
                //                        icon: { Image(systemName: "gear")
                //                                .resizable()
                //                                .scaledToFit()
                //                                .frame(width: 20, height: 20)
                //                                .padding(7)
                //                                .foregroundColor(.white)
                //                                .background(.gray)
                //                                .cornerRadius(6)
                //                        }
                //                    )
                //
                //                    Label(
                //                        title: { Text("손쉬운 사용") },
                //                        icon: { Image(systemName: "person.crop.circle")
                //                                .resizable()
                //                                .scaledToFit()
                //                                .frame(width: 20, height: 20)
                //                                .padding(7)
                //                                .foregroundColor(.white)
                //                                .background(.blue)
                //                                .cornerRadius(6)
                //                        }
                //                    )
                //
                //                    Label(
                //                        title: { Text("개인정보 보호 및 보안") },
                //                        icon: { Image(systemName: "hand.raised.fill")
                //                                .resizable()
                //                                .scaledToFit()
                //                                .frame(width: 20, height: 20)
                //                                .padding(7)
                //                                .foregroundColor(.white)
                //                                .background(.blue)
                //                                .cornerRadius(6)
                //                        }
                //                    )
                //                }
                
                //                Section {
                //                    Label(
                //                        title: { Text("암호") },
                //                        icon: { Image(systemName: "key.fill")
                //                                .resizable()
                //                                .scaledToFit()
                //                                .frame(width: 20, height: 20)
                //                                .padding(7)
                //                                .foregroundColor(.white)
                //                                .background(.gray)
                //                                .cornerRadius(6)
                //                        }
                //                    )
                //                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
