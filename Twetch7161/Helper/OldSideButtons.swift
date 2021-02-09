//
//  OldSideButtons.swift
//  Twetch7161
//
//  Created by Henry Hudson on 09/02/2021.
//

import SwiftUI

struct OldSideButtons: View {
    var body: some View {
        SlideMenuButtons()
    }
}

struct SlideMenuButtons: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "house")
                    Text("Home")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )
            //.buttonStyle(MenuButtonStyle(iconName: "house"))
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )
            //.buttonStyle(MenuButtonStyle(iconName: "bell"))

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )
            //.buttonStyle(MenuButtonStyle(iconName: "magnifyingglass"))

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "bitcoinsign.circle")
                    Text("Leaderboard")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "lock")
                    Text("features")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )

            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
                .padding(.vertical, 2)
            }
            .buttonStyle(NewMenuButtonStyle() )
        }
        .foregroundColor(.white)
        
        Spacer()
        
    }
}

struct MenuButtonStyle: ButtonStyle {
    var offColor = Color.white
    var onColor = Color.black
    var iconName: String = "gearshape"
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            
            ZStack {
                Rectangle()
                    .fill(color(for: configuration))
                    .frame(width: 45)
                    .shadow(color: .gray, radius: 0.5, x: 1, y: 1)
                Image(systemName: iconName)
                    
                    .foregroundColor(.blue)
                    .font(.system(size: 25, weight: .heavy, design: .default) )
            }
            configuration.label
                .padding(.all, 10)
                .foregroundColor(.white)
                .textCase(.uppercase)
                .font(Font.subheadline.bold() )
                .border(color(for: configuration), width: 4)
                .shadow(color: .gray, radius: 0.5, x: 1, y: 1)
        }
        .fixedSize()
        .animation(nil)
        
    }
    
    func color(for configuration: Configuration) -> Color {
        configuration.isPressed ? onColor : offColor
    }
}

struct OldSideButtons_Previews: PreviewProvider {
    static var previews: some View {
        OldSideButtons()
    }
}
