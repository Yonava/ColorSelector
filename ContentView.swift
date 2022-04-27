//
//  ContentView.swift
//  Expirimental Creation
//
//  Created by Yona Voss-Andreae on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var masterColor: Color = .red

    var colors: Array<Color> = [.red, .blue, .green, .orange, .purple, .yellow]
    
    var body: some View {
        VStack {
            
            Text("Pick A Color")
                .font(.largeTitle)
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(colors, id: \.self) { color in
                    rect(color)
                        .aspectRatio(1/1, contentMode: .fit)
                        .onTapGesture {
                            masterColor = color
                        }
                }
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(masterColor)
                VStack {
                    Text("Color Selected")
                        .foregroundColor(.black)
                        .bold()
                        .font(.largeTitle)
                }
            }
            
        }
        .padding()
    }
}

struct rect: View {
    
    var rectColor: Color
    
    init(_ color: Color) {
        rectColor = color
    }
    
    var body: some View {
        Rectangle()
            .foregroundColor(rectColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
