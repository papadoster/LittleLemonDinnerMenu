//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Александр Карпов on 20.08.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    var body: some View {
                
                VStack {
                    Image("LittleLemonLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, alignment: .center)
                    VStack {
                        Text("Price:")
                            .font(.title3)
                            .bold()
                        Text(String(menuItem.price))
                    }
                    .padding(.vertical)
                    VStack {
                        Text("Ordered:")
                            .font(.title3)
                            .bold()
                        Text(String(menuItem.ordersCount))
                    }
                    .padding(.bottom)
                    
                    VStack {
                        Text("Ingredients:")
                            .font(.title3)
                            .bold()
                        ForEach(menuItem.ingredients, id: \.self) { ingredient in
                            Text(ingredient.rawValue)
                        }
                    }.padding(.bottom)
                }
                .navigationTitle(menuItem.title)
            

    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(menuItem: MenuViewViewModel().foodMenuItems[0])
    }
}
