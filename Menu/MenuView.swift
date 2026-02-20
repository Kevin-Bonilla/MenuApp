//
//  ContentView.swift
//  Menu
//
//  Created by Kevin Bonilla on 2/16/26.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems : [MenuItem] = [MenuItem]()
    
    var body: some View {

        List(menuItems){ item in
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
        .listStyle(.plain)
        
    }
}

#Preview {
    MenuView()
}
