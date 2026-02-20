//
//  MenuItem.swift
//  Menu
//
//  Created by Kevin Bonilla on 2/16/26.
//

import Foundation

struct MenuItem : Identifiable {
    var id : UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
