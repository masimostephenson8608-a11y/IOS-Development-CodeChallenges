//  🏔️ MTECH Code Challenge ST02: "Profile Page"
//  Concept: Practice using SwiftUI view modifiers to style a view

//  Instructions:
    //  Below is a very basic structure for a profile view. You can view
    //  Using SwiftUI's built in view modifiers, improve the appearance of the profile page.
    //  No specific requirements for what it should look like are set so that you can flex your creativity, but you may want to try to use:
        //  .background, .font, .foregroundStyle, .padding, .border

//  Notes:
    //  Run the playground to see a preview. If you cannot see the preview, make sure Live View is enabled (Press Option + Command + Enter or, in the menu, click Editor -> Live View). Make sure "PlaygroundPage.current.setLiveView(ContentView())" is at the bottom of your code as well.

//  ⌺ Black Diamond Challenge:
    //  In addition to styling the existing Text objects, create other new objects befitting a social media profile page, such as Image, Button, or other views.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var name: String
    var interests: [String]
    var dislikes: [String]
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.gray, .red, .black], center: .topLeading, startRadius: 1350, endRadius: 50)
            VStack {
                Text("My Profile:")
                
                HStack {
                    Text("Hi! My name is")
                        .font(.title)
                    Text(name).font(.title.bold())
                }.padding()
                
                
                Text("My interests are:")
                ScrollView {
                    VStack {
                        ForEach(interests, id: \.self) { interest in
                            Text(interest)
                                .font(.title3)
                                .padding(10)
                                .background(.gray)
                                .clipShape(.capsule)
                        }
                    }
                }.frame(height: 100)
                    .glassEffect(.regular, in: RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)))
                
                
                Text("I really dislike...")
                ScrollView {
                    VStack {
                        ForEach(dislikes, id: \.self) { interest in
                            Text(interest)
                                .font(.title3)
                                .padding(10)
                                .background(.gray)
                                .clipShape(.capsule)
                        }
                    }
                }.frame(height: 100)
                    .glassEffect(.regular, in: RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)))
                Spacer()
            }
            .frame(width: 500, height: 700)
            .padding(.top, 500)
        }
    }
}

var dislikes = ["Sports", "Drogas", "Fortnite"]
var interests = ["Anime", "Computers", "Programming", "Hanging out"]

PlaygroundPage.current.setLiveView(ContentView(name: "Masimo", interests: interests, dislikes: dislikes))
