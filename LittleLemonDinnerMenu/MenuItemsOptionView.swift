//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import SwiftUI

enum SelectedCategories: String, CaseIterable {
    case Food
    case Drink
    case Dessert
}

enum SortBy: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case nameAZ = "A-Z"
}

struct MenuItemsOptionView: View {
    var body: some View {
        List {
            Section("SELECTED CATEGORIES") {
                ForEach(SelectedCategories.allCases, id: \.self) { category in
                    Text(category.rawValue)
                }
            }
            Section("SORT BY") {
                ForEach(SortBy.allCases, id: \.self) { category in
                    Text(category.rawValue)
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
