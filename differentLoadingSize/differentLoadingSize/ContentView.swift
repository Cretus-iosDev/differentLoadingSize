//
//  ContentView.swift
//  differentLoadingSize
//
//  Created by rutik maraskolhe on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var spinXLarge = false
    @State private var spinLarge = false
    @State private var spinMedium = false
    @State private var spinSmall = false
    @State private var spinXSmall = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            Text("SwiftUI Spinners")
                .font(.largeTitle)
            HStack {
                Circle() // X-Large
                .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color(#colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6745098039, alpha: 1)))
                    .frame(width: 40, height: 40)
                    .rotationEffect(.degrees(spinXLarge ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.spinXLarge.toggle()
                }
             
                Text("   - X-Large")
                
            }
            
            HStack {
                Circle() // Large
                .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color(#colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6745098039, alpha: 1)))
                    .frame(width: 32, height: 32)
                .rotationEffect(.degrees(spinLarge ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    self.spinLarge.toggle()
                }
             
                Text("     - Large")
                
            }
            
            HStack {
                Circle() // Medium
                .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color(#colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6745098039, alpha: 1)))
                    .frame(width: 24, height: 24)
                .rotationEffect(.degrees(spinMedium ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    self.spinMedium.toggle()
                }
             
                Text("       - Medium")
                
            }
            
            HStack {
                Circle() // Small
                .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color(#colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6745098039, alpha: 1)))
                    .frame(width: 16, height: 16)
                    .rotationEffect(.degrees(spinSmall ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.spinSmall.toggle()
                }
             
                Text("         - Small")
                
            }
            
            HStack {
                Circle() // X-Small
                .trim(from: 1/4, to: 1)
                    .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round, lineJoin: .round))
                    .foregroundColor(Color(#colorLiteral(red: 0.6588235294, green: 0.6588235294, blue: 0.6745098039, alpha: 1)))
                    .frame(width: 12, height: 12)
                    .rotationEffect(.degrees(spinXSmall ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.spinXSmall.toggle()
                }
             
                Text("          - X-Small")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
