//
//  FancyScoreView.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 03.02.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            
            Button("Increment score") {
                self.userSettings.incScore()
            }.padding().background(Color.green)
        }.padding().background(Color.orange)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
