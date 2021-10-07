//
//  TrapImage.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import SwiftUI

struct TrapImage: View {
    @State var height = UIScreen.main.bounds.height
  var  image: Image
    var body: some View {
        VStack{
        if self.height > 1200 {
        image
        .resizable()
        .scaledToFit()
            .frame(width: 400, height: 400)
        .background(Color.white)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color("Color"), lineWidth: 5))
        .shadow(radius: 5)
        }else{
            image
            .resizable()
            .scaledToFit()
                .frame(width: 250, height: 250)
            .background(Color.white)
            .clipShape(Circle())
                .overlay(Circle().stroke(Color("Color"), lineWidth: 5))
            .shadow(radius: 5)
            }
            
        }
    }
}

struct TrapImage_Previews: PreviewProvider {
    static var previews: some View {
        TrapImage(image: Image("image21"))
    }
}
