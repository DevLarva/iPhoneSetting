//
//  LoginModal.swift
//  iPhoneSetting
//
//  Created by 백대홍 on 2023/01/08.
//

import SwiftUI

struct LoginModal: View {
    enum Field: Hashable {
        case email
    }
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
    @State private var showingAlert = false //alert출력
    @FocusState private var focusedField: Field? // 텍스트 필드 포커스
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                },label: {
                    Text("취소")
                        .padding(20)
                })
                Spacer()
                
                Button("다음") {
                    if email.isEmpty {
                        focusedField = .email
                    }
                }
               
                    
               
                
                .padding()
                
            }
            Spacer()
            
            VStack(spacing: 10){
                Text("Apple ID")
                    .font(.title)
                
                Text("iCloud 및 기타 Apple 서비스에서 사용할 Apple ID로 로그인하십시오.")
                    .font(.title3)
                    .padding()
                
                
                Spacer()
                    .frame(height: 10)
                
                Divider()
                
                HStack(alignment: .center, spacing: 20) {
                    Text("Apple ID").bold()
                    TextField("이메일", text: $email)
                        .focused($focusedField, equals: .email)
                }
                .padding()
                
                Divider()
                
                Button("Apple ID가 없거나 잊어버렸습니까?") {
                           showingAlert = true
                       }
                       .alert("Apple ID가 없거나 잊어버렸습니까?", isPresented: $showingAlert) {
                           Button("Apple ID 생성") { }
                           Button("Apple ID를 잊어버렸습니까?") { }
                           Button("취소") { }
                       }
                
                
                Spacer()
                    .frame(height: 10)
                
                HStack(alignment: .center, spacing: 10) {
                    Image("아이클라우드")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("앱 스토어")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("노래")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("메세지")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("find-my")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("wallet")
                        .resizable()
                        .frame(width: 40, height: 40)
                    
                }
                
            Spacer()
            }
            
            VStack {
                Text("Apple ID는 모든 Apple 서비스를 이용할 때 사용하는 계정입니다.")
            }
            
            
        
            
        }
        
        
    }
}
struct LoginModal_Previews: PreviewProvider {
    static var previews: some View {
        LoginModal()
    }
}
