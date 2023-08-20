//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import Foundation

class MenuViewViewModel {
    
    let foodMenuItems: [MenuItem] = [
        MenuItem(price: 12.99, title: "Cheeseburger", category: .Food, ingredients: [.Pasta, .TomatoSauce, .Spinach]),
        MenuItem(price: 9.99, title: "Margherita Pizza", category: .Food, ingredients: [.Pasta, .TomatoSauce]),
        MenuItem(price: 8.49, title: "Caesar Salad", category: .Food, ingredients: [.Spinach, .Carrot]),
        MenuItem(price: 14.99, title: "Spaghetti Bolognese", category: .Food, ingredients: [.Pasta, .TomatoSauce]),
        MenuItem(price: 16.49, title: "Grilled Chicken", category: .Food, ingredients: [.Carrot]),
        MenuItem(price: 10.99, title: "Veggie Wrap", category: .Food, ingredients: [.Spinach, .Carrot]),
        MenuItem(price: 19.99, title: "Steak", category: .Food, ingredients: [.Carrot]),
        MenuItem(price: 13.99, title: "Sushi Roll", category: .Food, ingredients: []),
        MenuItem(price: 11.99, title: "Pasta Alfredo", category: .Food, ingredients: [.Pasta]),
        MenuItem(price: 15.99, title: "Mushroom Risotto", category: .Food, ingredients: [.Pasta]),
        MenuItem(price: 12.99, title: "Beef Tacos", category: .Food, ingredients: [.Carrot]),
        MenuItem(price: 10.49, title: "Eggplant Parmesan", category: .Food, ingredients: [.TomatoSauce])
    ]
    
    let drinkMenuItems: [MenuItem] = [
        MenuItem(price: 1.99, title: "Water", category: .Drink, ingredients: []),
        MenuItem(price: 2.49, title: "Coke", category: .Drink, ingredients: []),
        MenuItem(price: 3.99, title: "Orange Juice", category: .Drink, ingredients: []),
        MenuItem(price: 2.99, title: "Iced Tea", category: .Drink, ingredients: []),
        MenuItem(price: 2.99, title: "Lemonade", category: .Drink, ingredients: []),
        MenuItem(price: 3.49, title: "Coffee", category: .Drink, ingredients: []),
        MenuItem(price: 4.99, title: "Milkshake", category: .Drink, ingredients: []),
        MenuItem(price: 4.49, title: "Smoothie", category: .Drink, ingredients: []),
    ]
    
    
    let dessertMenuItems: [MenuItem] = [
        MenuItem(price: 5.99, title: "Chocolate Cake", category: .Dessert, ingredients: []),
        MenuItem(price: 4.49, title: "Vanilla Ice Cream", category: .Dessert, ingredients: []),
        MenuItem(price: 6.99, title: "Fruit Tart", category: .Dessert, ingredients: []),
        MenuItem(price: 7.49, title: "Tiramisu", category: .Dessert, ingredients: [])
    ]
}
