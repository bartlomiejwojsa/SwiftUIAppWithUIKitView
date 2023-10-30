//
//  ContentView.swift
//  URLImageViewSwiftUI
//
//  Created by Bartłomiej Wojsa on 26/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Spacer()
                        StarViewRepresentation(selected: $selected)
                            .frame(width: 35, height: 35)
                            .foregroundColor(Color.green)
                            .onTapGesture {
                                withAnimation {
                                    self.selected.toggle()
                                }
                                
                            }
                    }
                    URLImageView(url: "https://i0.wp.com/picjumbo.com/wp-content/uploads/fantasy-fall-nature-scenery-with-small-house-and-a-tree-free-photo.jpg?w=600&quality=80")
                        .frame(minWidth: 0, maxWidth: geometry.size.width, minHeight: 0, maxHeight: geometry.size.width)
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    ZStack {
                        Text("Hello")
                            .foregroundColor(Color.white)
                        if self.selected {
                            HStack {
                                Spacer()
                                Text("♥️")
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
