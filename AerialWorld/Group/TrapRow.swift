//
//  TrapRow.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//
import SwiftUI

struct TrapRow: View {
    var trap: Trap

    var body: some View {
   
        HStack {
            trap.image
                .resizable()
                  .scaledToFit()
                .frame(width: 100, height: 100)
                .background(Color.white)
                .cornerRadius(25)
            .shadow(radius: 5)
            Text(trap.name)
                  .font(.callout)
                           .foregroundColor(Color("4Color-4"))
            Text(trap.hard)
          
           
            Spacer()

         if trap.isFavoritePole {
                     Image(systemName: "star.fill")
                         .imageScale(.medium)
                         .foregroundColor(Color("Color"))
                 }
        }

    }
}


