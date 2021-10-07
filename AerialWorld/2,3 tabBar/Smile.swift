//
//  Smile.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 02.08.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//
import SwiftUI

struct Smile: View {
    @State var height = UIScreen.main.bounds.height
  
    var body: some View {
        if self.height >= 1100 {
            ZStack(alignment: .top) {
                Smi()
                    .padding(.top, 120)
                 .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height))
                    .background(Color("Color-4"))
            }
        } else {
            ZStack(alignment: .top) {
            Smi()
                .padding(.top, 25)
                .padding(.bottom, 15)
                .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height))
                .background(Color("Color-4"))
            }
        }
    }
}
        
        
        
struct Smi: View {
    @ State var showingProfile = false
    var body: some View {
        ZStack {
            
   ScrollView(.vertical, showsIndicators: false) {
    
           HStack(alignment: .center){
                  Text("Smile all the time :-)")
                .foregroundColor(Color.white)
                    .font(.largeTitle)
                .fontWeight(.light)
                }
           
               .padding(.top, 30)
        HStack(alignment: .center){
            Image("Majestic")
                .renderingMode(.original)
                  .resizable()
                .scaledToFill()
                
       }
               .frame(width: 250, height: 250)
       
         HStack(alignment: .center){
            Text("Our circus arts center \"Majestic\" \nthanks you, for your interest \nand use of the app")
            
                .font(.body)
                               .fontWeight(.light)
                             .foregroundColor(Color("Color-3"))
                               .multilineTextAlignment(.center)
                   }
             .padding(.top, 40)
        
                        
                          HStack(alignment: .center){
                             Text("❤️ ❤️ ❤️ \n Treat the developers with coffee) \n This is the best thanks for us \n ❤️")
                                .font(.headline)
                                 .fontWeight(.light)
                                 .multilineTextAlignment(.center)
                                .foregroundColor(Color.yellow)
                               }
                             .shadow(radius: 10)
                             .padding(.top, 20)
                          
    HStack(alignment: .center){
                 Text("5168 7427 2439 0236 - € \n5168 7427 2439 0152 - $")
        .foregroundColor(Color.yellow)
    }
    .padding(.top, 15)
    HStack(alignment: .center){
        Text("☝️\n Mykhailova Maryna")
            .multilineTextAlignment(.center)
         .foregroundColor(Color.white)
            .padding(.top, 10)
            .padding(.bottom, 15)
    }
    
                            Spacer()
                        
            }
   .shadow(radius: 15)
 }
        .background(Color("Color-4"))
           .edgesIgnoringSafeArea(.all)
        
}
}

