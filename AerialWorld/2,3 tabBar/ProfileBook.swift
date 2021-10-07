//
//  ProfileBook.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import SwiftUI

struct ProfileBook: View {
         @State var height = UIScreen.main.bounds.height
    var body: some View {
     
             ScrollView(.vertical, showsIndicators: false){
                VStack{
            HStack{
        Image("6w")
      .resizable()
    .scaledToFill()
   .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))

   .clipped()
            .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
            }
                      .padding(.top, 5)
                HStack{
                    Image("5w")
                    .resizable()
                        .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
              
                    .clipped()
                                .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
            }
                .padding(.top, 5)
                    HStack{
                        Image("4w")
                        .resizable()
                            .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
                     
                        .clipped()
                                    .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
            }
                      .padding(.top, 5)
                        HStack{
                            Image("7w")
                            .resizable()
                                .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
                               
                            .clipped()
                                        .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
            }
                      .padding(.top, 5)
                    HStack{
                                     Image("1w")
                                     .resizable()
                                         .scaledToFill()
                                     .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
                               
                                     .clipped()
                                                 .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
                             }
                                 .padding(.top, 5)
                    HStack{
                                     Image("2w")
                                     .resizable()
                                         .scaledToFill()
                                     .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
                               
                                     .clipped()
                                                 .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
                             }
                                 .padding(.top, 5)
                    HStack{
                                     Image("3w")
                                     .resizable()
                                         .scaledToFill()
                                     .frame(width: UIScreen.main.bounds.width - 40, height: (UIScreen.main.bounds.height / 3))
                               
                                     .clipped()
                                                 .clipShape(Corners(corner: [.allCorners], size: CGSize(width: 55, height: 55)))
                             }
                                 .padding(.top, 5)
           
  HStack{
                Text("Book")
                    .font(.largeTitle)
                     .fontWeight(.light)
                  .foregroundColor(Color.white)
                    .shadow(radius: 5)
            }
                      .padding(.top, 15)
        HStack{
            Text("\"World of aerial gymnastics\"")
                .font(.title)
                .fontWeight(.light)
                                 .foregroundColor(Color.white)
                                   .shadow(radius: 25)
    
            }
            HStack{
                Text("To order a book, \n you just need to write \n to our group on Instagram, \n where interesting facts about gymnastics \n world_of_aerial_gymnastics \n Or by mail: aerialist.book@gmail.com ")
                    .font(.body)
                    .fontWeight(.light)
                  .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.center)
            }
                   .padding(.top, 19)
            .padding(.bottom, 100)
              

                }
                 .frame(width: UIScreen.main.bounds.width)
            }
         
          

          .background(Color("Color-4"))
   .edgesIgnoringSafeArea(.all)
    }

}

