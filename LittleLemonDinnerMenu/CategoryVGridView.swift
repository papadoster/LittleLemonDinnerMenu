//
//  CategoryVGridView.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import SwiftUI

struct CategoryVGridView: View {
    
    var gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    let menuItems: [MenuItem]
    
    var body: some View {
        VStack {
            HStack {
                Text(menuItems[0].category.rawValue)
                    .font(.title)
                Spacer()
            } //: HSTACK
            .padding()
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(menuItems) { menuItem in
                    NavigationLink {
                        MenuItemDetailsView(menuItem: menuItem)
                    } label: {
                        VStack {
                            RoundedRectangle(cornerRadius: 8).frame(width: 110, height: 80, alignment: .center).foregroundColor(.primary)
                            Text(menuItem.title)
                                .foregroundColor(.primary)
                                .frame(width: 110, height: 50, alignment: .top)
                        } //: VSTACK
                    } //: NLINK
                } //: FOREACH
            } //: VGRID
            .padding(.horizontal)
        }
    }
}

struct CategoryVGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryVGridView(menuItems: MenuViewViewModel().drinkMenuItems)
    }
}
