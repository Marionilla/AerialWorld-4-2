//
//  Trap.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import SwiftUI
import CoreLocation
struct Trap: Hashable, Codable, Identifiable {
    var id: Int
    var description: String
    var name: String
    var points: String
    var hard: String
    var isFavoritePole: Bool
    var isTrapeze: Bool
    var isRing: Bool
    var isRope: Bool
    var isPole: Bool
    var isStraps: Bool
    var isSilks: Bool
  
     fileprivate var imageName: String
   var imagePop: String
 var imageProp: String
    var category: Category

    enum Category: String, CaseIterable, Codable, Hashable {
        case кольцо = "Кольцо"
        case полотна = "Полотна"
        case трапеція = "Трапеція"
        case Канат = "Канат"
         case Пилон = "Пилон"
    }
}
extension Trap {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Corners : Shape {
    
    var corner : UIRectCorner
    var size : CGSize
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: size)
        
        return Path(path.cgPath)
    }
}

struct Item : Identifiable, Hashable, Codable{
    
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var isr: Bool
    var ist: Bool
    var iss: Bool
    var isp: Bool
    var isst: Bool
    var ish: Bool
}

var items = [

    Item(image: "rope", title: "Rope",price: "~ 55 items", isr: true, ist: false, iss: false, isp: false, isst: false, ish: false),
    Item(image: "trap", title: "Trapeze",price: "~ 63 items", isr: false, ist: true, iss: false, isp: false, isst: false, ish: false),
    Item(id: "silks", image: "silks",title: "Silks", price: "~ 25 items", isr: false, ist: false, iss: true, isp: false, isst: false, ish: false),
    Item(id: "pilon", image: "pilon",title: "Pole", price: "~ 125 items", isr: false, ist: false, iss: false, isp: true, isst: false, ish: false),
    Item(id: "strap", image: "strap",title: "Straps", price: "~ 20 items", isr: false, ist: false, iss: false, isp: false, isst: true, ish: false),
    Item(id: "Hoopp", image: "Hoopp",title: "Hoop", price: "~ 84 items", isr: false, ist: false, iss: false, isp: false, isst: false, ish: true),
]
