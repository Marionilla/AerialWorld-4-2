//
//  RingMiddleList.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//


import SwiftUI

struct RingMiddleList: View {
    @EnvironmentObject private var userData: UserData
    
    
   var body: some View {

            List {
          
                
                
      ForEach(userData.trapes) { trap in
        if trap.isRing {
                             NavigationLink(
                                destination: TrapDetail(trap: trap)
                                     .environmentObject(self.userData)
                             ) {
                                 TrapRow(trap: trap)
                             }
               .listRowBackground(Color("Color-3"))
            
                         }
        
                     }
             

                       
          
        }.listStyle(GroupedListStyle())
                .navigationBarTitle(Text("Hoop"))
            
    }

    }

