//
//  URLImage.swift
//  ImageDownloaderSwiftUi
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct URLImage: View {
    
    let url : String
    @ObservedObject private var imageDownloader = ImageDownloader()
    
    init(url:String){
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }
    
    
    
    
    var body: some View {
        
        if let imageData = self.imageDownloader.downloadedData {
            guard  let img = UIImage(data: imageData) else {
                fatalError()
            }
            
            return  VStack {
                
                Image(uiImage: img).resizable()
  //  Image(systemName: "pencil").resizable()
                Text("Downloading")
            }
        }else {
            return  VStack {
                
                Image(systemName: "pencil").resizable()
                Text("Downloading")
            }
        }
        
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: Constants.imageURL)
    }
}
