//
//  HeaderButtons.swift
//  Twetch
//
//  Created by Henry Hudson on 27/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI



struct HeaderButtons: View {
    
    @State private var selectedTwetchView = Selections.following
    @State private var selection = 2
    @State private var profileIcon: String = ""
    var body: some View {

            VStack {
                
                Picker("", selection: $selection) {
                    Text("following").tag(1)
                    Text("top").tag(2)
                    Text("latest").tag(3)
                    
                }
                .pickerStyle(SegmentedPickerStyle())

                
        
                Divider()
                HStack {
                    TwetchersProfileView(profileSize: 42, profileIcon: profileIcon)
                        .offset(x: 15)
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Twetch")
                    }
                    Spacer()
                    
                    Group {
                        Button(action: {}) {
                            Image(systemName:  "magnifyingglass")
                            .resizable()
                                .frame(width: 25, height: 25, alignment: .center)
                        }
                        
                        Button(action: {}) {
                            Image(systemName:  "bell")
                               .resizable()
                               .frame(width: 25, height: 25, alignment: .center)
                        }
                    }.offset(x: -15)
                }
            }
        }
    }

enum Selections: String, CaseIterable, Identifiable {
    case latest
    case following
    case top
    
    var id: String { self.rawValue }
}


struct HeaderButtons_Previews: PreviewProvider {
    static var previews: some View {
        HeaderButtons()
    }
}
