//
//  LittleLemonDinnerMenuTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Александр Карпов on 20.08.2023.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class LittleLemonDinnerMenuTests: XCTestCase {
    
    func test_menuItemTitle_equalTitle() {
        let menuItem = MenuItem(price: 15.99, title: "Spaghetti Bolognese", category: MenuCategory.Food, ingredients: [.Pasta, .TomatoSauce])
        XCTAssertEqual(menuItem.title, "Spaghetti Bolognese")
        XCTAssertEqual(menuItem.ingredients, [.Pasta, .TomatoSauce])
    }

}
