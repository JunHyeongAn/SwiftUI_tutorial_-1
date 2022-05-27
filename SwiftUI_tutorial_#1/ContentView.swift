//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 40 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    // animation
                    withAnimation {
                        self.isActivated.toggle()
                    }
                } // HStack
                
                NavigationLink(destination: MyTextView(isActivate: $isActivated)) {
                    Text("Navigation")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding(20)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            } // VStack
            
        } // NavigationView
    } // View
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
