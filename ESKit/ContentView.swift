//
//  ContentView.swift
//  ESKit
//
//  Created by Kimyaehoon on 14/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onTapGesture {
                show.toggle()
            }
        
        if show {
            TestView(){
                show.toggle()
            }
            
        }
    }
}

struct TestView: View {
    var exit: () -> Void
    var body: some View {
        Text("asdf")
            .modifier(loadAnimation(opcity: 0, offset: 5))
        Text("bi")
            .modifier(loadAnimation(opcity: 0, offset: 5))
        Text("go")
            .onTapGesture {
                exit()
            }
            .modifier(loadAnimation(opcity: 0, offset: 5))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
