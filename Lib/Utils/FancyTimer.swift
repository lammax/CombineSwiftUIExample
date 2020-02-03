//
//  FancyTimer.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 17.01.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    
    @Published var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
    
}
