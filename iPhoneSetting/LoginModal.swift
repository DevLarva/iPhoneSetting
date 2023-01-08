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
    @FocusState private var focusedField: Field?
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
                
            Spacer()
            }
            
        }
        
        
    }
}
struct LoginModal_Previews: PreviewProvider {
    static var previews: some View {
        LoginModal()
    }
}
