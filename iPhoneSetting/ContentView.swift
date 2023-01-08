//
//  ContentView.swift
//  iPhoneSetting
//
//  Created by 백대홍 on 2023/01/06.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false //상태
    var body: some View {
        NavigationView {
            Form {
                Section{
                    List {
                        HStack(alignment: .center) {
                            Image(systemName:"person.crop.circle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.secondary)
                                
                                
                            VStack(alignment: .leading) {
                                Button(action: {
                                    print("hello button!")
                                    self.showModal = true
                                }) {
                                    Text("iPhone에 로그인")
                                }
                                .sheet(isPresented: self.$showModal) {
                                    LoginModal()
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
                                .symbolRenderingMode(.multicolor)
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
                            Image("환경설정")
                               
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("일반") {
                                Text("일반")
                                
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("손쉬운 사용")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("손쉬운 사용") {
                                Text("손쉬운 사용")
                                
                            }
                        }
                        HStack(alignment: .center, spacing: 10) {
                            Image("보안")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("개인 정보 보호") {
                                Text("개인 정보 보호")
                            }
                        }
                    }
                }
                
                Section{
                    List {
                        HStack(alignment: .center, spacing: 10) {
                            Image("암호")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                                
                            NavigationLink("암호") {
                                Text("암호")
                            }
                        }
                    }
                }
                Section{
                    List {
                        HStack(alignment: .center, spacing:10) {
                            Image("사파리")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("Safari") {
                                Text("Safari")
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("뉴스")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("News") {
                                Text("News")
                                
                            }
                        }
                        HStack(alignment: .center, spacing: 10) {
                            Image("번역")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("번역") {
                                Text("번역")
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("지도")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("지도") {
                                Text("지도")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("단축어")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("단축어") {
                                Text("단축어")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("하트")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("건강") {
                                Text("건강")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("시리")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("Siri 및 검색") {
                                Text("Siri 및 검색")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("앨범")
                                .resizable()
                                .frame(width: 30, height: 30)
                            NavigationLink("사진") {
                                Text("사진")
                                
                            }
                        }
                        HStack(alignment: .center, spacing:10) {
                            Image("게임")
                                .symbolRenderingMode(.multicolor)
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
                            Image("해머")
                                .symbolRenderingMode(.multicolor)
                                .resizable()
                                .frame(width: 30, height: 30)
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
