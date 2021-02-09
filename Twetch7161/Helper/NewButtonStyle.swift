//
//  NewButtonStyle.swift
//  Twetch7161
//
//  Created by Henry Hudson on 01/09/2020.
//

import SwiftUI

struct NewButtonStyle: View {
    var body: some View {
        ZStack {
            Color.blue
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                HStack {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
            })
            .buttonStyle(NewMenuButtonStyle() )
        }
    }
}

struct NewMenuButtonStyle: ButtonStyle {
    var offColor = Color.blue
    var onColor = Color.orange
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .fill(color(for: configuration))
                    .shadow(color: .cgDarkGray, radius: 1, x: 1, y: 1)
                
                configuration.label
                    .padding(.all, 10)
                    .foregroundColor(.white)
                    .font(Font.subheadline.bold() )
            }
        }
        .fixedSize()
        .animation(nil)
    }
    func color(for configuration: Configuration) -> Color {
        configuration.isPressed ? onColor : offColor
    }
}

struct NewButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        NewButtonStyle()
    }
}
