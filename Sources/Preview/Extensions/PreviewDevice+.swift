//
//  PreviewDevice+.swift
//  
//
//  Created by Developer on 13.05.2023.
//

import SwiftUI

public extension PreviewDevice {
    static var iPhone14: PreviewDevice {
        return .init(rawValue: "iPhone 14")
    }
    
    static var iPhone14ProMax: PreviewDevice {
        return .init(rawValue: "iPhone 14 Pro Max")
    }
    
    static var iPhone13mini: PreviewDevice {
        return .init(rawValue: "iPhone 13 mini")
    }
    
    static var iPhoneSE2: PreviewDevice {
        return .init(rawValue: "iPhone SE (2nd generation)")
    }
    
    static var iPhoneSE3: PreviewDevice {
        return .init(rawValue: "iPhone SE (3rd generation)")
    }
}
