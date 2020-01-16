//
//  ContentView.swift
//  ImageDownloaderSwiftUi
//
//  Created by Vadiraj Hippargi on 1/15/20.
//  Copyright © 2020 Vadiraj Hippargi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            URLImage(url: Constants.imageURL)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2 )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
