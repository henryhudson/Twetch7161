//
//  Design2.swift
//  Twetch7161
//
//  Created by Henry Hudson on 01/07/2020.
//

import SwiftUI

struct Screen: View {
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            HStack(spacing: 0) {
                
                
                    VStack {
                        TabView {
                            Home().tabItem {
                                Image(systemName: "house.fill")
                            }
                            Text("twitter").tabItem {
                                Image(systemName: "magnifyingglass")
                            }
                            Text("twitter").tabItem {
                                Image(systemName: "bell")
                            }
                            Text("twitter").tabItem {
                                Image(systemName: "envelope")
                            }
                        }
                    }
                    SlideMenu()
            
                
            }
            Button(action:{}) {
                Image(systemName: "paperplane.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white).padding()
            }.background(Color.blue).clipShape(Circle()).padding().padding(.vertical, 50)
            
            
        }
        
        
    }
    
    struct Home: View {
        var body: some View {
            VStack {
                NavigationView {
                    ScrollView (.vertical, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                            Post()
                            Divider()
                        }
                    }.navigationBarTitle("Home", displayMode: .inline).navigationBarItems(leading: Image(systemName: "person.crop.circle.fill").resizable().frame(width: 35, height: 35).clipShape(Circle()), trailing: Image(systemName: "sparkles").resizable().frame(width: 25, height: 25).foregroundColor(.blue).clipShape(Circle()))
                }.navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
    
    struct Post: View {
        var body: some View {
            HStack (alignment: .top) {
                VStack {
                    
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                }
                VStack (alignment: .leading) {
                    HStack {
                        Text("Twetch User").fontWeight(.heavy)
                        Text("@user_number").foregroundColor(.secondary)
                        Text(". 1h").foregroundColor(.secondary)
                    }
                    Text("Twetch is an awesome platform.").font(.subheadline)
                    
                    RemoteImage(url: "https://media.bitcoinfiles.org/5e44fd1c8ab118e696578ad45972c610293cedbba02dda11eb6e02608230fb71")
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    
                    Buttons()
//                    HStack {
//                        TwetchButtons()
//                        Spacer()
//                    }
                }
            }.padding()
        }
    }
    
    struct Buttons: View {
        var body: some View {
            HStack (spacing: 40) {
                Button(action: {}) {
                    Image(systemName: "message")
                }.foregroundColor(.gray)
              
                Button(action: {}) {
                    Image(systemName: "arrow.2.squarepath")
                }.foregroundColor(.gray)
              
                Button(action: {}) {
                    Image(systemName: "heart")
                }.foregroundColor(.gray)
              
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }.foregroundColor(.gray)
            }
        }
    }
}

struct Design2_Previews: PreviewProvider {
    static var previews: some View {
        Screen()
    }
}
