//
//  ContentView.swift
//  iPhoneSetting
//
//  Created by 백대홍 on 2023/01/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section{
                    List {
                        
                        HStack(alignment: .center) {
                            Image(systemName:"person.crop.circle.fill")
                                .resizable()
                                .frame(width: 70, height: 70)
                            VStack(alignment: .leading) {
                                NavigationLink("iPhone에 로그인") {
                                    Text("안녕하세요")
                                }
                                Text("iCloud, App Store 등 설정")
                            }
                        }
                    }
                }
                Section{
                    List {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("스크린 타임") {
                                Text("스크린 타임")
                            }
                        }
                    }
                }
                Section{
                    List {
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"gear.circle.fill")
                                
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("일반") {
                                Text("일반")
                                
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("손쉬운 사용") {
                                Text("손쉬운 사용")
                                
                            }
                        }
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName:"hand.raised")
                                .resizable()
                                .frame(width: 20, height: 30)
                            NavigationLink("개인 정보 보호") {
                                Text("개인 정보 보호")
                            }
                        }
                    }
                }
                
                Section{
                    List {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName:"key")
                                
                                
                            NavigationLink("암호") {
                                Text("암호")
                            }
                        }
                    }
                }
                Section{
                    List {
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"safari")
                                
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("Safari") {
                                Text("Safari")
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("News") {
                                Text("News")
                                
                            }
                        }
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName:"hand.raised")
                                .resizable()
                                .frame(width: 20, height: 30)
                            NavigationLink("번역") {
                                Text("번역")
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("지도") {
                                Text("지도")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("단축어") {
                                Text("단축어")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("Siri 및 검색") {
                                Text("Siri 및 검색")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("사진") {
                                Text("사진")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image(systemName:"hourglass.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("Game Center") {
                                Text("Game Center")
                                
                            }
                        }
                        
                        
                    }
                }
                Section{
                    List {
                        HStack(alignment: .center, spacing: 10) {
                            Image(systemName:"hammer.circle.fill")
                                
                                
                            NavigationLink("개발자") {
                                Text("개발자")
                            }
                        }
                    }
                }
                
            }
            .navigationTitle("설정")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//Text("일반")
//Text("손쉬운 사용")
//Text("개인 정보 보호")
//Text("암호")
