//
//  StarView.swift
//  URLImageViewSwiftUI
//
//  Created by Bartłomiej Wojsa on 26/03/2023.
//

import Foundation
import UIKit

class StarView: UIView {

    var selected: Bool = false {
        didSet {
            self.imageView.image = UIImage(systemName: self.selected ? "star.fill" : "star")
        }
    }
    
    private var imageView: UIImageView!
    
    init() {
        let frame = CGRect(x: 0, y: 0, width: 35, height: 35)
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
        self.imageView = UIImageView(frame: self.frame)
//        self.imageView.isUserInteractionEnabled = true
//        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped))
//        imageView.addGestureRecognizer(tapGestureRecognizer)
        self.addSubview(imageView)
        
    }
    
//    @objc private func tapped() {
//        self.selected.toggle()
//    }
}
