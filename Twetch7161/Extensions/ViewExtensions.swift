//
//  ViewExtensions.swift
//  Twetch7161
//
//  Created by Henry Hudson on 02/02/2021.
//

import SwiftUI

struct ViewExtensions: View {
    var body: some View {
      VStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Divider()
          .frame(height: 1.5)
          .background(Color.white)
          .glow(color: .orange, radius: 2)
        Text("BSV IS BITCOIN")
      }
    }
}

extension View {
    func glow(color: Color = .red, radius: CGFloat = 20) -> some View {
        self
            .overlay(self.blur(radius: radius / 3))
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)

    }
}

extension View {
    func multiColorGlow() -> some View {
        ForEach(0..<2) { i in
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red]), center: .center))
                .frame(width: 400, height: 400)
                .mask(self.blur(radius: 20))
                .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
        }
    }
}

extension View {
    func innerShadow<S: Shape>(using shape: S, angle: Angle = .degrees(0), color: Color = .orange, width: CGFloat = 6, blur: CGFloat = 6) -> some View {
        
        let finalX = CGFloat(cos(angle.radians - .pi / 2))
        let finalY = CGFloat(sin(angle.radians - .pi / 2))
        
        return self
            .overlay(
                shape
                    .stroke(color, lineWidth: width)
                    .offset(x: finalX * width * 0.6, y: finalY * width * 0.6 )
                    .blur(radius: blur)
                    .mask(shape)
            )
    }
}

struct ViewExtensions_Previews: PreviewProvider {
    static var previews: some View {
        ViewExtensions()
    }
}
