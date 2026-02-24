//
//  ContentView.swift
//  Menu
//
//  Created by Kevin Bonilla on 2/16/26.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems : [MenuItem] = [MenuItem]()
    var dataService : DataService = DataService()
    
    var body: some View {

        List(menuItems){ item in
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear(){
            // call for menuItems Data
            menuItems = dataService.getData()
        }
        
    }
}

#Preview {
    MenuView()
}
