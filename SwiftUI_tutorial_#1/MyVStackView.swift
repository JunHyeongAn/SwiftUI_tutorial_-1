//
//  MyVStackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct MyVStackView: View {
    // 데이터를 연동시킨다
    @Binding var isActivated: Bool
    
    // init
    init(isActivated: Binding<Bool> =
            .constant(true)){
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack {
            Text("v1!")
                .font(.system(size: 30))
            Text("v2!")
                .font(.system(size: 30))
            Text("v3!")
                .font(.system(size: 30))
        }
        .padding(self.isActivated ? 10 : 0)
        .background(self.isActivated ? Color.green : Color.red)
        
    }
}
