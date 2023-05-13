//
//  EnvironmentVariationPreviewViewModifier.swift
//  
//
//  Created by Developer on 13.05.2023.
//

import SwiftUI

fileprivate struct EnvironmentVariationPreviewViewModifier<Data, ID>: ViewModifier where Data: RandomAccessCollection, ID: Hashable {
    let environmentPath: WritableKeyPath<EnvironmentValues, Data.Element>
    let data: Data
    let id: KeyPath<Data.Element, ID>
    
    func body(content: Content) -> some View {
        ForEach(data, id: id) { contentSizeClass in
            content
                .environment(environmentPath, contentSizeClass)
        }
    }
}

public extension View {
    
    /** Generating multiple preview variations
     - Example:
            View()
                .environmentPreviews(\.colorScheme, [.light, .dark], id: \.self.hashValue)
                .environmentPreviews(\.sizeCategory, [.medium, .extraExtraExtraLarge], id: \.self.hashValue)
     */
    func environmentPreviews<Data, ID>(
        _ environmentPath: WritableKeyPath<EnvironmentValues, Data.Element>,
        _ data: Data,
        id: KeyPath<Data.Element, ID>
    ) -> some View where Data: RandomAccessCollection, ID: Hashable {
        self.modifier(
            EnvironmentVariationPreviewViewModifier(
                environmentPath: environmentPath,
                data: data,
                id: id
            )
        )
    }
}
