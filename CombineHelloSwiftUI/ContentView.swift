//
//  ContentView.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 15.01.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = "Max"
    
    var body: some View {
        VStack {
            Image("test")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
            //.clipShape(Circle())
            
            Text("Hello \(name)!")
                .font(.largeTitle)
                .foregroundColor(.purple)
            
            Text("?")
                .font(.title)
                .foregroundColor(.orange)
            
            Button(action: { self.name = "Jack" }) {
                Text("Change name")
            }
            
            HStack {
                Text("Left")
                Text("Right")
            }
            .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
