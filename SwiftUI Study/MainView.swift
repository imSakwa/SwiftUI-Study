//
//  MainView.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/05/26.
//

import SwiftUI

struct MainView: View {
    @State private var isButtonStudy: Bool = false
    @State private var isTextFieldStudy: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination:
                        ButtonStudy(),
                    label: {
                        Button("버튼 공부", action:{
                            self.isButtonStudy.toggle()
                        })
                    }
                )
                NavigationLink(
                    destination:
                        TextFieldStudy(),
                    label: {
                        Button("텍스트필드 공부", action:{
                            self.isButtonStudy.toggle()
                        })
                    }
                )
            }
            .navigationTitle("SwiftUI Study")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}