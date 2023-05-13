//
//  UIView+Preview.swift
//  
//
//  Created by Alik Moldovanu on 13.05.2023.
//

import SwiftUI

public extension UIView {
    func toPreview() -> some View {
        PreviewViewRepresentable(view: self)
    }
}
