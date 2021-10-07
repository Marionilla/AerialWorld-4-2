//
//  MainTabList.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//


import SwiftUI

struct MainTabList: View {

    @State var selected: Int = 1
    init() {
      UITabBar.appearance().backgroundColor = UIColor.gray
    }
    var body: some View {
        TabView(selection: $selected) {
            
            TrapList()


                .tabItem {
                    Image("main")
                    Text("Main")
                    
                       
                    }.tag(1)
          ProfileCoffe()

            .tabItem {
         
                               Image("note")
                                Text("Note")
                        
                                
            
            }.tag(2)
           
            ProfileBook()
                       .tabItem {
                                          Image("book")
                                  Text("Book")
                                  
                                         
            }.tag(3)
            ProfileContacts()

                                  .tabItem {
                                    Image("System")
                                    Text("System")
            }.tag(4)
        }.accentColor(Color("Color"))
            
    }
}


