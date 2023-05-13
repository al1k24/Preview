//
//  UIViewController+Preview.swift
//  
//
//  Created by Alik Moldovanu on 13.05.2023.
//

import SwiftUI

public extension UIViewController {
    @ViewBuilder
    public func toPreview(
        _ previewDevices: [PreviewDevice] = []
    ) -> some View {
        if previewDevices.isEmpty {
            PreviewViewControllerRepresentable(vc: self)
        } else {
            PreviewViewControllerRepresentable(vc: self)
                .previewDevices(previewDevices)
        }
    }
}
