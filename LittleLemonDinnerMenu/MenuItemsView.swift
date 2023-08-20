//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import SwiftUI

struct MenuItemsView: View {
    
    var gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let viewModel = MenuViewViewModel()
    
    @State var isShowOptions = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                CategoryVGridView(menuItems: viewModel.foodMenuItems)
                CategoryVGridView(menuItems: viewModel.drinkMenuItems)
                CategoryVGridView(menuItems: viewModel.dessertMenuItems)
            } //: SCROLL VIEW
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    isShowOptions = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                
            }
            .sheet(isPresented: $isShowOptions) {
                MenuItemsOptionView()
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
