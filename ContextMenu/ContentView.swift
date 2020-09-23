//
//  ContentView.swift
//  ContextMenu
//
//  Created by Jan Hovland on 23/09/2020.
//

/// Dette er oppbygging av .contextMenu i iOS 14

import SwiftUI

let menuItems = ContextMenu {
    Button("♥️ - Hearts", action: selectHearts)
    Button("♣️ - Clubs", action: selectClubs)
    Button("♠️ - Spades", action: selectSpades)
    Button("♦️ - Diamonds", action: selectDiamonds)
}

struct ContentView: View {
    private var shouldShowMenu = true
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorite Card Suit")
                    .padding()
                    .contextMenu(shouldShowMenu ? menuItems : nil)
            }
        }
    }
}

func selectHearts() {}
func selectClubs() {}
func selectSpades() {}
func selectDiamonds() {}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
