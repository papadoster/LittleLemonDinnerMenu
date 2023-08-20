//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    let title: String
    var category: MenuCategory
    var ordersCount: Int = 1
    var ingredients: [Ingredient]
}



