//
//  SlideMenu.swift
//  SlideMenu2
//
//  Created by Henry Hudson on 12/08/2020.
//

import SwiftUI

struct SlideMenu: View {
    @State private var width = UIScreen.main.bounds.width * 0.8
    @State private var x = -UIScreen.main.bounds.width * 0.8
    
    var body: some View {
        
        HStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange, Color.red]), startPoint: .top, endPoint: .bottom)
                
                Image("TwetchLogo")
                    .resizable()
                    .scaledToFit()
                    .colorInvert()
                    .frame(width: 200, height: 200)
                    .offset(x: 0, y: -UIScreen.main.bounds.height / 2.5)
                
                VStack (alignment: .leading) {
                    Spacer()
                    
                    ProfileInMenu()
                    
                    FollowersInMenu()
                    
                    SideViewNavLinks()
                    
                    Spacer()
                }
            }
            .frame(width: width)
            .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5)
            .offset(x: x)
            Spacer()
        }
        .background(Color.black.opacity(x == 0 ? 0.5 : 0))
        .edgesIgnoringSafeArea(.all)
        
        .gesture(DragGesture().onChanged( { value in
            withAnimation {
                if value.translation.width > 0 {
                    x = -width + value.translation.width
                } else {
                    x = value.translation.width
                }
            }
        }).onEnded( { value in
            withAnimation {
                if -x < width / 2 {
                    x = 0
                } else {
                    x = -width
                }
            }
        })
        )
        .animation(.easeInOut)
    }
    
}

struct ProfileInMenu: View {
    // @ObservedObject var meSlideScreen: MeSlideScreen = MeSlideScreen()
    @ObservedObject var theUser: TheUser = TheUser()
    //let userName =
    var body: some View {
        HStack {
            Circle()
                .fill(Color(.systemGreen))
                .frame(width: 50)
            
            
            VStack(alignment: .leading) {
                Text(theUser.myUserName)
                // Text(meSlideScreen.myUserName.description)
                //Text(meSlideScreen.myUserName)
                //  Text(meSlideScreen.userData.description)
                
                //                Text("@" + meSlideScreen.myId!)
                //                    .font(.caption)
            }
            
        }
        .foregroundColor(.white)
        .frame(height: 50.0)
        
        Text("")
    }
}

struct FollowersInMenu: View {
    var body: some View {
        HStack(spacing: 0) {
            
            Text("Followers: ")
                .font(.subheadline)
            Text("")
                .font(.subheadline)
                .bold()
            Text("  ")
            
            Text("Following: ")
                .font(.subheadline)
            Text("420")
                .font(.subheadline)
                .bold()
        }
        .foregroundColor(.white)
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SlideMenu()
        }
    }
}
