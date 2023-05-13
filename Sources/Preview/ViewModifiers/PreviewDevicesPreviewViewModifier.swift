//
//  PreviewDevicesPreviewViewModifier.swift
//  
//
//  Created by Developer on 13.05.2023.
//

import SwiftUI

fileprivate struct PreviewDevicesPreviewViewModifier: ViewModifier {
    let previewDevices: [PreviewDevice]
    
    func body(content: Content) -> some View {
        ForEach(previewDevices, id: \.self.rawValue) { previewDevice in
            content
                .previewDevice(previewDevice)
                .previewDisplayName(previewDevice.rawValue)
        }
    }
}

public extension View {
    func previewDevices(_ previewDevices: [PreviewDevice]) -> some View {
        modifier(PreviewDevicesPreviewViewModifier(previewDevices: previewDevices))
    }
}
