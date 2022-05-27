//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct MyTextView : View {
    @State private var index: Int = 0
    @Binding var isActivated: Bool
    
    init(isActivate: Binding<Bool> = .constant(false)) {
        _isActivated = isActivate
    }
    
    // 배경색 배열준비
    private let backgroundColors = [
        Color.orange, Color.red, Color.cyan, Color.green, Color.indigo
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("배경 아이템 인덱스 \(index + 1)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("Current State : \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            Spacer()
        }
            .background(backgroundColors[index])
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                if(self.index == self.backgroundColors.count - 1) {
                    self.index = 0
                }
                else {
                    self.index += 1
                }
                
            }
        
        
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}


