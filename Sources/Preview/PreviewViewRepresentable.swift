//
//  PreviewViewRepresentable.swift
//  
//
//  Created by Developer on 13.05.2023.
//

import SwiftUI

internal struct PreviewViewRepresentable<V: UIView>: UIViewRepresentable {
    let view: V
    
    func makeUIView(context: Context) -> V { return view }
    func updateUIView(_ uiView: V, context: Context) { }
}

fileprivate struct SizeModifier: ViewModifier {
    let size: CGSize
    
    func body(content: Content) -> some View {
        content
            .previewLayout(.fixed(width: size.width, height: size.height))
    }
}

public extension View {
    func size(_ size: CGSize) -> some View {
        self.modifier(SizeModifier(size: size))
    }
}
