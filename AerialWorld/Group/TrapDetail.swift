//
//  TrapDetail.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import SwiftUI
struct TrapDetail: View {
    var trap: Trap
        @State var height = UIScreen.main.bounds.height
    var body: some View {
        VStack{
            MainPage(trap: trap)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, 1)
        .background(Color("Color-1"))
    
    }
}
struct MainPage: View {
    var trap: Trap
    @EnvironmentObject var userData: UserData
    var trapIndex: Int {
         userData.trapes.firstIndex(where: {$0.id == trap.id})!
     }
 
    var body: some View {
        ZStack{
          //Start first blockImage
                        HStack(alignment: .top){
                    Image("0")
                        .resizable()
                        .scaledToFill()
                         }
                        .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height / 3))
                        .background(Color("Color-4"))
                        .clipped()
                        .clipShape(Corners(corner: [.bottomRight,.bottomLeft], size: CGSize(width: 55, height: 55)))
                        .edgesIgnoringSafeArea(.top)
                  
        //End First blockImage
        //Main image block
        VStack(alignment: .center) {
        TrapImage(image: trap.image)
        }
        .padding(.top,80)
        }
        Spacer()
        ScrollView(.vertical, showsIndicators: false) {
   VStack{
      
     
          HStack(alignment: .center) {
          Text(trap.name)
              .font(.body)
            .foregroundColor(Color.black)
             .multilineTextAlignment(.center)
        .lineLimit(6)
          }
          //
          HStack(alignment: .center) {
          Button(action: {
              self.userData.trapes[self.trapIndex].isFavoritePole.toggle()
            
          }){
              if
                  self.userData.trapes[self.trapIndex].isFavoritePole {
                  Image(systemName: "star.fill")
                      .foregroundColor(Color("Color"))
              } else {
                  Image(systemName: "star")
                      .foregroundColor(Color.gray)
              }
          }
          
          }
          .padding(.top, 5)
          // Start secondPart with description
          HStack(alignment: .center) {
              Text(trap.description)
                .font(.subheadline)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black).foregroundColor(Color.black)
                  .padding(.horizontal, 15)
                  .padding(.vertical,5)
        }
            HStack(alignment: .center){
                Text(trap.imageProp)
                      .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                 .frame(width: 100, height: 100)
                            .background(Color("Color-4"))
                             .clipShape(Circle())
                                 .overlay(Circle().stroke(Color("Color"), lineWidth: 3))
                             .shadow(radius: 5)
                      .padding(.trailing, 40)
                 Text(trap.imagePop)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                .frame(width: 100, height: 100)
                                 .background(Color("Color-4"))
                                  .clipShape(Circle())
                                      .overlay(Circle().stroke(Color("Color"), lineWidth: 3))
                                  .shadow(radius: 5)
                               .padding(.leading, 40)
           }
      
          .padding(.top,5)
             
 
          HStack(alignment: .center) {
          Text("Evaluation of complexity: \(trap.points)")
            .foregroundColor(Color("4Color-4"))
            .font(.headline)
            .fontWeight(.light)
          }
 
           .padding(.top, 10)
          HStack(alignment: .center) {
              Text("Level of difficulty: \(trap.hard)")
            .foregroundColor(Color("4Color-4"))
            .font(.headline)
            .fontWeight(.light)
                         
         
          }
              .shadow(radius: 10)
                  .padding(.top, 5)
          .padding(.bottom, 10)
                Spacer()

   }
        }
        
        .padding(.top,20)
        
        .background(Color("Color-1").opacity(5.2))
        
        .shadow(radius: 20)
            }
        
    }
