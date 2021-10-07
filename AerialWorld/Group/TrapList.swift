//
//  TrapList.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//
import SwiftUI
struct TrapList: View {
    @State var height = UIScreen.main.bounds.height
    var body: some View {
        NavigationView {
        if #available(iOS 14.0, *) {
            Main()
       
        } else {
            // Fallback on earlier versions
        }
    }
        .navigationViewStyle(StackNavigationViewStyle())
}
}





@available(iOS 14.0, *)
struct Main : View {
    @Namespace var animation
    @State var show = false
    @State var showingProfile = false
    var body: some View{
        
        ZStack{
            VStack{
                HStack(alignment: .top){
                
                            Text("Aerial gymnastics")
                                
                                .font(.title2)
                                 .fontWeight(.light)
                                .foregroundColor(Color("Color-3"))
                               .padding(.top,25)
                                   }
                            .frame(width: UIScreen.main.bounds.width, height: (UIScreen.main.bounds.height / 12))
                            .background(Color("4Color-4"))
                            .clipShape(Corners(corner: [.bottomRight,.bottomLeft], size: CGSize(width: 55, height: 55)))
            .edgesIgnoringSafeArea(.top)
               
        
            // Start first block-image
     
 
                HStack(alignment: .center){
                    Button(action: { self.showingProfile.toggle() }) {
                        Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: (UIScreen.main.bounds.height / 4))
                    }
                        .sheet(isPresented: $showingProfile) {
                        Smile()
                    }
               
             .frame(width: (UIScreen.main.bounds.width), height: (UIScreen.main.bounds.height / 5))
                .padding(.horizontal,-10)
                .background(Color("Color").cornerRadius(35))
                          .padding(.trailing,7)
                .padding(.leading,7)
                .background(Color.orange.cornerRadius(35))
                }
                Spacer()
                ScrollView(.vertical, showsIndicators: false) {
                
               
                    VStack(spacing: 15){
                  
              //1-st block
                        ForEach(items){item in
                            if item.ist {
                            NavigationLink(
                                destination: TrapMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                       //2-d block
                        ForEach(items){item in
                            if item.ish {
                            NavigationLink(
                                destination: RingMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                       
                        //3-t block
                        ForEach(items){item in
                            if item.isp {
                            NavigationLink(
                                destination: PoleMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                        //4-t block
                        ForEach(items){item in
                            if item.iss {
                            NavigationLink(
                                destination: SilkMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                        // 5 block
                        ForEach(items){item in
                            if item.isst {
                            NavigationLink(
                                destination: SilkMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                        // 6 block
                    ForEach(items){item in
                            if item.isr {
                            NavigationLink(
                                destination: SilkMiddleList()
                            ) {
                            CardView(item: item, animation: animation)
                                .shadow(color: Color.black.opacity(0.16), radius: 5, x: 0, y: 5)
                            }
                        }
                        }
                    }
                 
                    .padding(.horizontal,22)
                }
                .padding(.vertical)
                .background(
                    Color("Color-3")
                        .clipShape(Corners(corner: [.topLeft,.topRight], size: CGSize(width: 55, height: 55)))
                        .ignoresSafeArea(.all, edges: .bottom)
                        .padding(.top,100)
                )
            
        }
            
          
        }
        .background(Color("Color-2")
                        .ignoresSafeArea(.all, edges: .all))
        .navigationBarTitle("")
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)

    }
}

@available(iOS 14.0, *)
struct CardView : View {
    
    var item : Item
    var animation : Namespace.ID
    
    var body: some View{
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            
            HStack(spacing: 15){
                
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                // max Size...
                    .frame(height: 180)
                    .matchedGeometryEffect(id: item.image, in: animation)
            }
            .padding(.horizontal)
            .padding(.bottom)
            .background(Color.white.cornerRadius(25).padding(.top,35))
            .padding(.trailing,7)
            .background(Color.orange.cornerRadius(25).padding(.top,35))
           
            Text(item.price)
                .foregroundColor(Color.black.opacity(0.6))
                .padding(.vertical,10)
                .padding(.horizontal,35)
                .background(Color("Color"))
                .clipShape(Corners(corner: [.topRight,.bottomLeft], size: CGSize(width: 15, height: 15)))
        }
      
    }
}




           


             


            
