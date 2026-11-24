//
//  ContentView.swift
//  SimpleCardViewSwiftUI
//
//  Created by RMP on 14/06/1448 AH.
//

import SwiftUI

let colors: [Color] = [.black, .blue,
                       .brown, .cyan,
                       .gray, .green,
                       .indigo, .mint,
                       .orange, .pink,
                       .primary, .purple,
                       .red, .secondary,
                       .teal, .yellow,
                       .gray, .green,
                       .indigo, .mint,]

let images: [String] = ["1", "2", "3", "4", "5",
                        "1", "2", "3", "4", "5",
                        "1", "2", "3", "4", "5",
                        "1", "2", "3", "4", "5"]

let titles: [String] = [
    
    "SwiftUI for iOS 16",
    "UIKit and SwiftUI",
    "Combine Asynchronous Networking",
    "macOS Programming",
    "Design UI/UX",
    "Swift For Beginners",
    "macOS / iOS Using Objective-C",
    "C/C++ for Architure Programming",
    "Swfit For Server Side",
    "SwiftUI for iOS 16",
    "UIKit and SwiftUI",
    "Combine Asynchronous Networking",
    "macOS Programming",
    "Design UI/UX",
    "Swift For Beginners",
    "macOS / iOS Using Objective-C",
    "C/C++ for Architure Programming",
    "Swfit For Server Side",
    "Combine Asynchronous Networking",
    "macOS Programming",

]

let sections = [16, 17, 18, 19, 20,
                4, 5, 13, 14, 15,
                6, 7, 8, 9,11, 12,
                6, 7, 8, 9]

struct CardView: View {
    
    @State var showingFullScreen: Bool = false
    
    @State var image = ""
    @State var title = ""
    @State var section = ""
    @State var color: Color = .white
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.gray.opacity(0.20).ignoresSafeArea()
                ScrollView {
                    
                    ForEach(0..<20) { index in
                        
                        Button {
                            
                            image = images[index]
                            title = titles[index]
                            section = "\((0...30).randomElement()!)"
                            color = colors[index]
                            
                            
                            showingFullScreen.toggle()
                        } label: {
                            
                            VStack(alignment: .leading, spacing: 4.0) {
                                
                                Image(images[index]).resizable().aspectRatio(contentMode: .fit).cornerRadius(12)
                                Text(titles[index]).fontWeight(.bold)
                                
                                Text("\(sections[index]) Sections")
                                
                            }.foregroundColor(.white).padding().background(colors[index]).cornerRadius(24).shadow(radius: 10)
                        }.padding(5)
                        
                    }
                }.navigationTitle("Courses")
                
            }.fullScreenCover(isPresented: $showingFullScreen) {
                FullCardView(image: $image, title: $title, section: $section, color: $color)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
