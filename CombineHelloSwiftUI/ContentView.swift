//
//  ContentView.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 15.01.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fancyTimer: FancyTimer = FancyTimer()
    
    @ObservedObject var userSettings: UserSettings = UserSettings()
    
    @State var tasks: [Task] = []
    
    @State var isPlaying: Bool = false
    
    private func addTask() {
        self.userSettings.incScore()
        tasks.append(Task(name: "Task\(fancyTimer.value)"))
    }
    
    var body: some View {
        VStack {
            List {
                
                Button(action: addTask) {
                    Text("Add task № \(self.userSettings.score)")
                        .font(.title)
                        .foregroundColor(isPlaying ? .green : .black)
                }
                
                PlayingButton(isPlaying: $isPlaying)
                
                ForEach(tasks) { task in
                    
                    Text(task.name)
                    
                }
                
            }
        }
    }
}

struct PlayingButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Button(action: { self.isPlaying.toggle() }) {
            Text("Play IT")
        }
        .padding(12)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
