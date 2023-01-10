//
//  PictureView.swift
//  iPhoneSetting
//
//  Created by 백대홍 on 2023/01/10.
//

import SwiftUI

struct PictureView: View {
    @State var PassWordtoggleOn = true
    @State var AlbumtoggleOn = true
    @State var ViedeotoggleOn = true
    @State var ContentToggleOn = true
    var body: some View {
// MARK: - 처음 네비게이션뷰가 시작하는 부분에서만 네비게이션뷰를 사용 안그럼 계속 쌓여서 중첩되서 뷰가 밀림.
        
        List{
            Section{
                HStack(alignment: .center, spacing: 10) {
                    Image("시리")
                        .symbolRenderingMode(.multicolor)
                        .resizable()
                        .frame(width: 30, height: 30)
                    NavigationLink("Siri 및 검색") {
                        Text("스크린 타임")
                    }
                }
            }
        header: {
            Text("사진 접근 허용")
        }
            Section {
                HStack(alignment: .center) {
                    Text("암호 사용")
                    Toggle(isOn: self.$PassWordtoggleOn) {
                        
                    }
                }
                
            } footer: {
                Text("'가려진 항목' 앨범 및 '최근 삭제된 항목' 앨범을 보려면 암호가 필요합니다.")
            }
            Section {
                HStack {
                    Text("'가려진 항목'앨범 보기")
                    Toggle(isOn: self.$AlbumtoggleOn) {
                        
                    }
                }
                
            } footer: {
                Text("'가려진 항목' 앨범이 앨범 탭의 '기타' 아래에 나타납니다.")
            }
            Section {
                HStack {
                    Text("비디오 및 Live Photo 자동 재생")
                    Toggle(isOn: self.$ViedeotoggleOn) {
                        
                    }
                }
            }
            
            Section {
                VStack {
                    VStack {
                        Text("teasdasd")
                    }
                }
                VStack {
                    Text("teasdasd")
                    
                }
                HStack {
                    Text("공휴일 이벤트 보기")
                    Toggle(isOn: self.$ViedeotoggleOn) {
                        
                    }
                }
                
            }header: {
                Text("추억")
            }footer: {
                Text("사용자의 국가 또는 지역의 공휴일 이벤트를 때에 맞춰 표시하도록 선택할 수 있습니다.")
            }
            Section {
                HStack {
                    Text("추천 콘텐츠 보기")
                    Toggle(isOn: self.$ContentToggleOn) {
                        
                    }
                }
            }header: {
                Text("추억 및 추천 사진")
            }footer: {
                Text("이 기기에서 사진 앱의 'For You' 및 검색 또는 위젯 등의 위치에 추천 사진과 추억이 자동으로 나타나도록 허용합니다.")
            }
            Section {
                HStack {
                    Text("자동")
                    
                }
                HStack {
                    Text("원본 유지")
                }
                
            }header: {
                Text("MAC 또는 PC로 전송")
            }footer: {
                Text("사진 및 비디오를 자동으로 호환되는 포맷으로 전송하거나,호환성 확인 없이 항상 원복 파일을 전송합니다.")
            }
            
            
            
        }
        .navigationBarTitle("사진")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    
}


struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
