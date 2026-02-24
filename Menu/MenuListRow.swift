//
//  MenuListRow.swift
//  Menu
//
//  Created by Kevin Bonilla on 2/23/26.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Test item", price: "10.00", imageName: "tako-sushi"))
}
