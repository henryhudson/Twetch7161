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
        NavigationView {
            ZStack{
                TestingForEachForAllResponseData()
                
                NewTwetchButton()
                
                SlideMenu()
            }
            .navigationBarHidden(true)
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
