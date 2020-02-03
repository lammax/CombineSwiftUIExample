//
//  UserSettings.swift
//  CombineHelloSwiftUI
//
//  Created by Mac on 03.02.2020.
//  Copyright © 2020 Lammax. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    
    @Published var score: Int = 0
    
    func incScore() {
        self.score += 1
    }
    
}
