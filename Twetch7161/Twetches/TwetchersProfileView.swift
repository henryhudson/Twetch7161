//
//  TwetchersProfileView.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TwetchersProfileView: View {
    @State var profileSize: CGFloat
    @State var profileIcon: String
    var body: some View {
//        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//            Circle()
//            .fill(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
//                .frame(width: profileSize, height: profileSize)
//                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 1, x: 3, y: 3)
//                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.1), radius: 1, x: -3, y: -3)
//        }
        
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            //RemoteImage(url: profileIcon)
            RemoteImage(url: profileIcon, loading: Image(systemName: "timelapse"), failure: Image(systemName: "flame.fill"))
                .clipCircle()
                .frame(width: profileSize, height: profileSize)
        })
    }
}

struct TwetchersProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TwetchersProfileView(profileSize: 42, profileIcon: "https://cimg.twetch.com/avatars/2020/07/09/4264a126cf27347b5960598f8b840451aadf72e0.jpg")
    }
}
