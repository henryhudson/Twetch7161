//
//  Logos.swift
//  Twetch7161
//
//  Created by Henry Hudson on 16/07/2020.
//

import SwiftUI
import PureSwiftUI

struct Logos: View {
    var body: some View {
        ZStack {
            Image("TwetchSymbol")
                .resizable()
                .scaledToFit()
        }
    }
}

struct Logos_Previews: PreviewProvider {
    static var previews: some View {
        Logos()
            
    }
}
