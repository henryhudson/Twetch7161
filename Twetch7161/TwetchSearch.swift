//
//  TwetchSearch.swift
//  Twetch7161
//
//  Created by Henry Hudson on 02/09/2020.
//

import SwiftUI

struct TwetchSearch: View {
    @State private var searchQuery = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow]), startPoint: .leading, endPoint: .trailing)
            
            VStack(spacing: 0) {
                Image("TwetchLogo")
                    .resizable()
                    .colorInvert()
                    .scaledToFit()
                
                TextField("⌕", text: $searchQuery)
                    .textFieldStyle(RoundedBorderTextFieldStyle() )
                    .offset(x: 0, y: -UIScreen.main.bounds.height * 0.1)
                    .padding()
 
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TwetchSearch_Previews: PreviewProvider {
    static var previews: some View {
        TwetchSearch()
    }
}
