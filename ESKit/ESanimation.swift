//
//  ESanimation.swift
//  ESKit
//
//  Created by Kimyaehoon on 14/01/2021.
//

import SwiftUI

struct loadAnimation: ViewModifier {
    @State var opcity: Double = 0
    @State var offset: CGFloat = 0
    func body(content: Content) -> some View {
        content
            .onAppear(){
                withAnimation(Animation.spring().delay(drand48())){
                    opcity = 1
                    //fighting!
                    offset = 0
                }
            }
            .opacity(opcity)
            .offset(y: offset)
            .onDisappear(){
                withAnimation(Animation.spring().delay(drand48())){
                    opcity = 0
                    offset = 1
                }
            }
    }
}
