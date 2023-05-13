//
//  PreviewViewControllerRepresentable.swift
//  
//
//  Created by Developer on 13.05.2023.
//

import SwiftUI

internal struct PreviewViewControllerRepresentable<VC: UIViewController>: UIViewControllerRepresentable {
    let vc: VC
    
    func makeUIViewController(context: Context) -> VC { return vc }
    func updateUIViewController(_ uiViewController: VC, context: Context) {}
}
