//
//  ProfileContacts.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//



import SwiftUI

struct ProfileContacts: View {
    var body: some View {
        Home()

    }
}


struct Home : View {
    
    @State var data = [

        Pata(id: 0, image: "1я"),
        
        Pata(id: 1, image: "2я"),
        
        Pata(id: 2, image: "3я"),
        
        Pata(id: 3, image: "4я"),
        
        Pata(id: 4, image: "5я"),
        Pata(id: 5, image: "6z"),
        Pata(id: 6, image: "7я"),
        Pata(id: 7, image: "8я"),
        Pata(id: 8, image: "10я"),
        Pata(id: 9, image: "11я"),
        Pata(id: 10, image: "12]"),
        Pata(id: 11, image: "13я"),
        Pata(id: 12, image: "14я"),
        Pata(id: 13, image: "15z")

    ]
    @State var showAlert = false
    @State var index = 0

    @State var show = false

    var body: some View{
        
        ZStack{
            
            VStack{

                HStack{
                    Button(action: {self.showAlert = true}) {
                        Text("Grading system")
                           .font(.title)
                            .foregroundColor(Color("Color-1"))
                    }
                    .alert(isPresented:$showAlert){
                        Alert(title:Text(
                        "In order to use our grading system, you need to subscribe. For details, write to the mail - \n aerialist.book@gmail.com"))
                    }
                    Spacer()

                    Text("\(self.index + 1)/\(self.data.count)")
                        .foregroundColor(.gray)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()

                GeometryReader{g in

                    Carousel(data: self.$data, index: self.$index, show: self.$show, size: g.frame(in: .global))
                }
                .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 30)
            }
            
        }
        .background(Color.black.opacity(0.09).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

// Carousel List...

struct HScrollView : View {
    
    @Binding var data : [Pata]


    var size : CGRect
    @State var height = UIScreen.main.bounds.height

    var body: some View {
       HStack(spacing: 0){
         if self.height >= 750 && height < 1200 {
            ForEach(self.data){i in
                
                ZStack(alignment: .top){
     
                    Image(i.image)
                    .resizable()
                    .frame(width: self.size.width - 40, height: self.size.height - 10)
                    .cornerRadius(55)
                }
                .padding(.bottom,40)
                // fixed frame for carousel list...
                .frame(width: self.size.width, height: self.size.height)
            }
         }else if height >= 1200 {
    ForEach(self.data){i in
               ZStack(alignment: .top){
                   Image(i.image)
                   .resizable()
                   .frame(width: self.size.width - 350, height: self.size.height - 80)
                   .cornerRadius(55)
               }
               .padding(.bottom,40)
               // fixed frame for carousel list...
               .frame(width: self.size.width, height: self.size.height)
           }
             }else {
                      ForEach(self.data){i in
                           ZStack(alignment: .bottom){
                           Image(i.image)
                               .resizable()
                   
                               .frame(width: self.size.width - 80, height: self.size.height - 30)
                               .cornerRadius(25)
                          
                           }
                     
                           .frame(width: self.size.width, height: self.size.height)
                       }
        }
        }
    }
}
struct Carousel : UIViewRepresentable {
    
    
    func makeCoordinator() -> Coordinator {
        
        return Carousel.Coordinator(parent1: self)
    }
    
    @Binding var data : [Pata]
    @Binding var index : Int
    @Binding var show : Bool
    var size : CGRect
    
    func makeUIView(context: Context) -> UIScrollView {
        
        let view = UIScrollView()
        // because each view takse full width so content size will be * total count...
        view.contentSize = CGSize(width: size.width * CGFloat(data.count), height: size.height)
        
        let child = UIHostingController(rootView: HScrollView(data: self.$data, size: self.size))
        child.view.backgroundColor = .clear
        // same here....
        child.view.frame = CGRect(x: 0, y: 0, width: size.width * CGFloat(data.count), height: size.height)
        
        view.addSubview(child.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
        // dynamically update size when new data added...
        
        for i in 0..<uiView.subviews.count{
            
            uiView.subviews[i].frame = CGRect(x: 0, y: 0, width: size.width * CGFloat(data.count), height: size.height)
        }
        
        uiView.contentSize = CGSize(width: size.width * CGFloat(data.count), height: size.height)
    }
    
    class Coordinator : NSObject,UIScrollViewDelegate{
        
        var parent : Carousel
        
        init(parent1 : Carousel) {
            
            parent = parent1
        }
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
             
                let index = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
                
                parent.index = index
            }
    
    }
}



struct Pata : Identifiable {
    var id : Int
    var image : String
}


