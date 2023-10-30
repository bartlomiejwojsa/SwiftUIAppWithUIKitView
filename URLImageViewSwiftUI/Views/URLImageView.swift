//
//  URLImageView.swift
//  URLImageViewSwiftUI
//
//  Created by Bartłomiej Wojsa on 26/03/2023.
//

import Foundation
import SwiftUI

struct URLImageView: View {
    
    @ObservedObject private var imageLoader = ImageLoader()
    
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self.imageLoader.load(url: url)
    }
    
    var body: some View {
        var image: Image
        if let downloadedImage = self.imageLoader.downloadedImage {
            image = Image(uiImage: downloadedImage)
        } else {
            image = self.placeholder
        }
        return image
            .resizable()
    }
}

struct URLImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            URLImageView(url: "https://cdn2.hubspot.net/hubfs/53/parts-url.jpg")
        }
    }
}
