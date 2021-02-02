//
//  ContentView.swift
//  Twetch7161
//
//  Created by Henry Hudson on 01/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var latest23: Latest23 = Latest23()
    @State private var itemNumber = 0
    
    var body: some View {
        ZStack{
            ScrollView {
                ForEach (latest23.bContents, id: \.asString ){ item in
                    VStack(spacing: 3) {
                        TwetchView(bContent: item.asString ,
                                   userNumber:  latest23.userIds[4]!)
                      
                      Divider()
                                    
                    }
                }
            }
            
            NewTwetchButton()
            
            SlideMenu()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
