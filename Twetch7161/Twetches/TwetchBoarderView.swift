//
//  TwetchBoarderView.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TwetchBoarderView: View {
    @State var cornerRadius: CGFloat
    var body: some View {
        
        Rectangle()
            .fill(Color(.systemBackground))
            .shadow(color: Color(.label).opacity(0.25), radius: 1, x: -1, y: -1)
            .shadow(color: Color(.systemBackground).opacity(0.23), radius: 2.3)
            .shadow(color: Color(.label).opacity(0.2), radius: 1, x: 1, y: 1)
            

    }
}

struct TwetchBoarderView_Previews: PreviewProvider {
    static var previews: some View {
        TwetchBoarderView(cornerRadius: Constants.screenSize.height/55)
            .preferredColorScheme(.dark)
                .frame(width: Constants.screenSize.width * 0.95, height: 230)
            
    }
}
