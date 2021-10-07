//
//  UserData.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 25.04.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//


import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false

    @Published var trapes = trapData



}
