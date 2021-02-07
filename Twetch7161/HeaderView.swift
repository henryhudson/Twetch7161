//
//  HeaderView.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        
        ZStack {
            TwetchBoarderView(cornerRadius: Constants.screenSize.height / 1000)
                .frame(width: Constants.screenSize.width * 0.98, height: Constants.screenSize.height / 6)
                
            VStack {
                HeaderButtons()
            }
            
        }
        .offset(y: Constants.screenSize.height/2.5)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
