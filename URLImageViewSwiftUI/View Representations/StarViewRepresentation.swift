//
//  StarViewRepresentation.swift
//  URLImageViewSwiftUI
//
//  Created by Bartłomiej Wojsa on 26/03/2023.
//

import Foundation
import SwiftUI
import Combine

struct StarViewRepresentation: UIViewRepresentable {
    
    @Binding var selected: Bool
    
    typealias UIViewType = StarView
    
    func makeUIView(context: UIViewRepresentableContext<StarViewRepresentation>) -> StarView {
        let starView = StarView()
        return starView
    }
    
    func updateUIView(_ uiView: StarView, context: UIViewRepresentableContext<StarViewRepresentation>) {
        print("Pushing change to UIKit View")
        uiView.selected = self.selected
    }
    
}
