//  🏔️ MTECH Code Challenge ST14: "SF Symbol Lookup"
//  Concept: Practice creating ViewModifiers to create custom reusable view designs.

//  Instructions:
    //  In this simple challenge, all you need to do is create an app in which typing a symbol name into a textfield displays that symbol.
    //  Furthermore, add a set of buttons that will change the color of the symbol (you may pick what colors).
        //  To find symbol names, download the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg

//  Notes:
    //  To make sure the image displays correctly, you may need to add the .resizable(), .scaledToFit(), and .frame(width:) modifiers to your Image view.

//  ⌺ Black Diamond Challenge:
    //  Add a list view that searches all SFSymbol names and displays matches to the string in the text field. You can get a list of symbol names from the SF Symbols app by displaying all symbols in a list view, selecting all, right clicking and choosing "copy names".

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        Image(systemName: "photo")
    }
}

PlaygroundPage.current.setLiveView(ContentView())

