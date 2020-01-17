//
//  ContentView.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 15.01.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var tasks: [Task] = []
    
    private func addTask() {
        tasks.append(Task(name: "Task1"))
    }
    
    var body: some View {
        VStack {
            List {
                
                Button(action: addTask) {
                    Text("Add task")
                }
                
                ForEach(tasks) { task in
                    
                    Text(task.name)
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
