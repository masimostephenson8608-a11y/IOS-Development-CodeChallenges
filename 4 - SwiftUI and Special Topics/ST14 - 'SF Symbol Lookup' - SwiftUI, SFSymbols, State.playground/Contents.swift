//  🏔️ MTECH Code Challenge ST14: "SF Symbol Lookup"
//  Concept: Practice modifying SF Symbol images' properties to see the range of options they have for improving your app's visual design.

//  Instructions:
    //  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
    //  Add an interface that allows you to change the following properties of SF Symbols:
        //  Scale
        //  Weight (Bold/Not bold)
        //  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
        //  Color/Palette (primary, secondary, and tertiary options)
            //  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
        //  Variable coloring percentage
            //  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

    //  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg

//  ⌺ Black Diamond Challenge:
    //  Add all symbols from the SF Symbols app to your app (you can copy all symbol names by selecting all of them from the "All" category, right click, and copy names)
    //  Replace the Picker to better accommodate the new large list--what would be a better interface to sort through so many choices?
    //  Add an interface that uses the .symbolVariant(_: SymbolVariants) modifier to allow you to switch between available symbol variants

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let symbolChoices = ["cloud.rainbow.half.fill", "apple.terminal.on.rectangle.fill", "badge.plus.radiowaves.right", "sun.rain.fill"]
    @State private var selectedSymbol: String = "cloud.rainbow.half.fill"
    @State var imageSize: CGFloat = 100
    @State var imageWeight: Font.Weight = .regular
    @State var renderingMode: SymbolRenderingMode = .palette
    @State var variableValue: Double = 0.5
    @State var color: SwiftUI.Color = .black
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Input size")
            
            Slider(value: $imageSize, in: 100...200)
                .frame(width: 350)
            
            Text("Image Weight")
            
            
            Picker("Image Weight", selection: $imageWeight) {
                Text("Thin")
                    .tag(Font.Weight.thin)
                Text("Regular")
                    .tag(Font.Weight.regular)
                Text("Bold")
                    .tag(Font.Weight.bold)
            }.pickerStyle(.segmented)
                .frame(width: 350)
            
            Text("Won't let me use Rendering Mode in a picker so I couldn't really add it").multilineTextAlignment(.center)
                .frame(width: 350)
            
            Picker("Color", selection: $color) {
                Text("Black")
                    .tag(SwiftUI.Color.black)
                Text("Red")
                    .tint(.red)
                    .tag(SwiftUI.Color.red)
            }.pickerStyle(.inline)
                .colorMultiply(.red)
            
            Picker("Select a Symbol", selection: $selectedSymbol) {
                ForEach(symbolChoices, id: \.self) { symbol in
                    Text(symbol).tag(symbol)
                }
            }.frame(width: 350)
            .pickerStyle(WheelPickerStyle()) // Change this to your preferred style
            .padding()
            
            Slider(value: $variableValue, in: 0...1, step: 0.05)
            
            Text("Selected Symbol: \(selectedSymbol)")
                .font(.title)
                .padding()
            
            Image(systemName: selectedSymbol, variableValue: variableValue)
                .font(.system(size: imageSize, weight: imageWeight))
                .symbolRenderingMode(renderingMode)
                .foregroundStyle(color)
                .padding()
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

