//
//  LoginModal.swift
//  iPhoneSetting
//
//  Created by 백대홍 on 2023/01/08.
//

import SwiftUI

struct LoginModal: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email: String = ""
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
               }
               VStack(spacing: 10){
                   Text("Apple ID")
                       .font(.title)
                       
                   Text("iCloud 및 기타 Apple 서비스에서 사용할 Apple ID로 로그인하십시오.").font(.title3)
                   
                   
                   Spacer()
                       .frame(height: 30)
                   
                   Divider()
                   
                   
                   HStack(alignment: .center) {
                       Text("Apple ID").bold()
                       TextField("이메일", text: $email)
                               .padding()
                   
                        
                               
                       }
                
               
                   Divider()
                   
                       
                   
                       
                   
                   
                   
               }
               .padding()
               Spacer()
           }
       }
   }
struct LoginModal_Previews: PreviewProvider {
    static var previews: some View {
        LoginModal()
    }
}
