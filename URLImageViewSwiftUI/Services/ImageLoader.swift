//
//  ImageLoader.swift
//  URLImageViewSwiftUI
//
//  Created by Bartłomiej Wojsa on 26/03/2023.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    
    @Published var downloadedImage: UIImage?
    
    func load(url: String) {
        guard let imageURL = URL(string: url) else {
            fatalError("Image url is incorrect")
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: imageURL){ (data, response, error) in

            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.downloadedImage = nil
                }
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedImage = UIImage(data: data)
            }
            
        }
        task.resume()
    }
}
